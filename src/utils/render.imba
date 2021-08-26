import index from '../templates/index.html'

export default def render(pageObject, viewData)
	String(index.body.replace ",,,", JSON.stringify pageObject)