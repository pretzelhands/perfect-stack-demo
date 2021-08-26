require('dotenv').config!

import render from './utils/render.imba'

export const inertiaConfig = 
	version: process.env.INERTIA_ASSET_VERSION
	html: render

export const sessionConfig =
	secret: process.env.SESSION_SECRET,
	resave: false
	saveUninitialized: false,
	cookie:
		secure: true,
		httpOnly: true,
		sameSite: true