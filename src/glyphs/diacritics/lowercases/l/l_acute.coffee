exports.glyphs['l_acute'] =
	unicode: 'ĺ'
	glyphName: 'lacute'
	characterName: 'LATIN SMALL LETTER L WITH ACUTE'
	base: 'l'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'acute'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x - (15)
					y: anchors[0].y
			transformOrigin: anchors[0].point
			transforms: Array(
				['scaleY', 0.9 ],
				['scaleX', 1.05 ]
			)
