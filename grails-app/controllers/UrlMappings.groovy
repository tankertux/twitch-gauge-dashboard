class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/twitchGauge/index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
