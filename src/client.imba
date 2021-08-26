import { createInertiaApp } from './inertia'

import './pages'

createInertiaApp
	resolve: do(name) name
	setup: do({ App, props })
		imba.mount <{App} props=props>