(function() {
	tinymce.PluginManager.requireLangPack('googlemap');
	tinymce.create('tinymce.plugins.googlemap', {
		init: function(ed, url) {
			ed.addCommand('mceaddgooglemap', function() {
				ed.windowManager.open({
					file: url + '/googlemap.htm',
					width: 600 + ed.getLang('googlemap.delta_width', 0),
					height: 300 + ed.getLang('googlemap.delta_height', 0),
					inline: 1
				}, {
					plugin_url: url,
					some_custom_arg: 'custom arg'
				})
			});
			ed.addButton('googlemap', {
				title: 'googlemap.googlemap_button_desc',
				cmd: 'mceaddgooglemap',
				image: url + '/img/googlemap.gif'
			});
			ed.onNodeChange.add(function(ed, cm, n) {
				cm.setActive('googlemap', n.nodeName == 'iframe')
			})
		},
		getInfo: function() {
			return{
				longname: 'googlemap',
				author: 'QQ:6326420',
				authorurl: 'http://www.ecisp.cn',
				infourl: 'http://www.ecisp.cn',
				version: "1.0"
			}
		}
	});
	tinymce.PluginManager.add('googlemap', tinymce.plugins.googlemap)
})();      