public class GeneratedJavaScriptTagLib {
	static namespace = 'g'

	/**
	 * Renders a JavaScript tag pointing to the ScriptsController using the controllerName as a default action
	 *
	 * @attr name action to call on Scripts controller. Defaults to <controllerName>
	 */
	def script = { attrs ->
		def link = g.createLink(
				controller: 'scripts',
				action: attrs.name ?: controllerName,
				params: attrs.params ?: [])
		out << """<script type="text/javascript" src="${link}.js"></script>"""
	}
}
