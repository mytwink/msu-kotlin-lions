package hello

import io.vertx.core.Vertx
import io.vertx.core.json.JsonObject
import io.vertx.ext.web.RoutingContext
import io.vertx.ext.web.client.WebClient
import io.vertx.ext.web.templ.FreeMarkerTemplateEngine
import io.vertx.kotlin.core.json.get
import io.vertx.redis.RedisClient
import java.util.*
import javax.print.attribute.IntegerSyntax

class Staff{
    var id = 0
    var firstname: String? = ""
    var lastname: String? = ""
    var middlename: String? = ""
    var image: String? = ""
}

class StaffInfo{
    var firstname: String? = ""
    var lastname: String? = ""
    var middlename: String? = ""
    var image: String? = ""
    var about: String? = ""
    var contacts: Vector<Contact> = Vector<Contact>()
}

class Contact{
    var key: String? = ""
    var value: String? = ""
    var icon: String? = ""
}

class Model(vertx :Vertx) {
    val redis :RedisClient = RedisClient.create(vertx)
    val client :WebClient = WebClient.create(vertx)
    val CACHE_TIME = 6000L
    val ip = "192.168.2.233"
    val port = 7000

    fun render(engine: FreeMarkerTemplateEngine, ctx: RoutingContext, templateFileName: String){
        engine.render(ctx, templateFileName, { res ->
            if (res.succeeded()) {
                ctx.response().end(res.result())
            } else {
                ctx.fail(res.cause())
            }
        })
    }

    fun cache(id: String, json: String){
        redis.set("${id}", json, { r ->
            print("Caching ${id}\n")
        })
        redis.expire("${id}", CACHE_TIME, { r ->
            print("Expire after 600 sec")
        })
    }

    fun json_to_Staffs(json:String): Vector<Staff> {
        var content = JsonObject(json).getJsonArray("data");
        var staffs: Vector<Staff> = Vector()
        for(i: Int in 0..content.size()-1){
            var now = content.getJsonObject(i)
            var tmp:Staff = Staff()

            tmp.id = now.getInteger("id")

            tmp.firstname = now.getString("firstname")
            if(tmp.firstname == null)
                tmp.firstname = ""

            tmp.lastname = now.getString("lastname")
            if(tmp.lastname == null)
                tmp.lastname  = ""

            tmp.image = "//" + ip + ":" + port + now.getString("photo")

            staffs.addElement(tmp)
        }
        return staffs
    }

    fun json_to_StaffInfo(json:String): StaffInfo {
        var content = JsonObject(json);
        var staff: StaffInfo = StaffInfo()
        staff.firstname = content.getString("firstname")
        if(staff.firstname == null)
            staff.firstname = ""
        staff.lastname = content.getString("lastname")
        if(staff.lastname == null)
            staff.lastname = ""
        staff.middlename = content.getString("middlename")
        if(staff.middlename == null)
            staff.middlename = ""
        staff.image = "//" + ip + ":" + port + content.getString("photo")

        staff.about = content.getString("aboutFull")
        if(staff.about == null)
            staff.about = ""

        var tmp = content.getJsonArray("contacts")
        for(i: Int in 0..tmp.size()-1){
            var now = Contact()
            now.icon = tmp.getJsonObject(i).getString("icon")
            now.key = tmp.getJsonObject(i).getString("key")
            now.value = tmp.getJsonObject(i).getString("value")
            staff.contacts.addElement(now)
        }

        return staff
    }



    fun get_staff(id :String, ctx: RoutingContext, engine: FreeMarkerTemplateEngine) {
        redis.exists("${id}", { res ->
            if (res.succeeded()) {
                if(res.result()==1L){
                    redis.get("${id}", { s ->
                        var staff: StaffInfo = json_to_StaffInfo(s.result())
                        ctx.put("staff", staff)
                        render(engine,ctx,"templates/staff.ftl")
                    })
                } else {
                    // Request to backend REST API
                    client.get(7000, ip, "/users/${id}").send({ ar ->
                        if (ar.succeeded()) {
                            // Obtain response
                            var staff: StaffInfo = json_to_StaffInfo(ar.result().body().toString())
                            ctx.put("staff", staff)
                            render(engine,ctx,"templates/staff.ftl")
                            cache(id,  ar.result().body().toString())
                        }
                    })
                }
            }
        })
    }

    fun get_all_staff(ctx: RoutingContext, engine: FreeMarkerTemplateEngine) {
        redis.exists("all_staff", { res ->
            if (res.succeeded()) {
                if(res.result()==1L){
                    redis.get("all_staff", { s ->
                        var staffs: Vector<Staff> = json_to_Staffs(s.result())
                        ctx.put("staff", staffs)
                        render(engine, ctx,"templates/index.ftl")
                    })
                } else {
                    // Request to backend REST API
                    client.get(7000, ip, "/users").send({ ar ->
                        if (ar.succeeded()) {
                            // Obtain response
                            var staffs: Vector<Staff> = json_to_Staffs(ar.result().body().toString())
                            ctx.put("staff", staffs)
                            render(engine,ctx,"templates/index.ftl")
                            cache("all_staff",  ar.result().body().toString())
                        }
                    })
                }
            }
        })
    }
}