import express from 'express'
import session from 'express-session'
import edgedb from 'edgedb'

import inertia from './inertia-express/inertia'

import { inertiaConfig, sessionConfig } from './config.imba'

const server = express!

server.use express.json!
server.use inertia(inertiaConfig)
server.use session(sessionConfig)

server.get("/") do({ Inertia })
	Inertia.render
		component: "home-page"

imba.serve server.listen(process.env.PORT or 3000)