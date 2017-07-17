(function() {
	tinymce.PluginManager.requireLangPack('share');
	tinymce.create('tinymce.plugins.share', {
		init: function(ed, url) {
			ed.addCommand('mceaddshare', function() {
				ed.windowManager.open({
					file: url + '/share.htm',
					width: 600 + ed.getLang('share.delta_width', 0),
					height: 300 + ed.getLang('share.delta_height', 0),
					inline: 1
				}, {
					plugin_url: url,
					some_custom_arg: 'custom arg'
				})
			});
			ed.addButton('share', {
				title: 'share.share_button_desc',
				cmd: 'mceaddshare',
				image: url + '/img/share.gif'
			});
			ed.onNodeChange.add(function(ed, cm, n) {
				cm.setActive('share', n.nodeName == 'share')
			})
		},
		getInfo: function() {
			return{
				longname: 'share',
				author: 'QQ:6326420',
				authorurl: 'http://www.ecisp.cn',
				infourl: 'http://www.ecisp.cn',
				version: "1.0"
			}
		}
	});
	tinymce.PluginManager.add('share', tinymce.plugins.share)
})();      