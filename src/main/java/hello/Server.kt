package hello

import io.vertx.core.json.JsonObject
import io.vertx.ext.web.Router
import io.vertx.ext.web.client.WebClient
import io.vertx.ext.web.handler.StaticHandler
import io.vertx.ext.web.templ.FreeMarkerTemplateEngine
import io.vertx.ext.web.handler.BodyHandler
import io.vertx.redis.RedisClient


class Server : io.vertx.core.AbstractVerticle()  {

    override fun start() {
        var router = Router.router(vertx)
        var model = Model(vertx)

        router.route().handler(BodyHandler.create())

        // Serve static resources from the /static directory
        router.route("/static/*").handler(StaticHandler.create().setWebRoot("static").setCachingEnabled(false).setCacheEntryTimeout(1000).setMaxAgeSeconds(1))

        // In order to use a template we first need to create an engine
        var engine = FreeMarkerTemplateEngine.create()

        // Entry point to the application, this will render a custom template.
        router.route("/staff/:id").handler({ ctx ->
            var id = ctx.request().getParam("id")
            model.get_staff(id,ctx,engine)
        })

        router.route("/").handler({ ctx ->
            model.get_all_staff(ctx, engine)
        })

        router.get().handler({ ctx ->
            engine.render(ctx, "templates/404.ftl", { res ->
                if (res.succeeded()) {
                    ctx.response().end(res.result())
                } else {
                    ctx.fail(res.cause())
                }
            })
        })

        vertx.createHttpServer().requestHandler({ router.accept(it) }).listen(80)
    }
}