exports.glyphs['macron'] =
	glyphName: 'macron'
	characterName: 'MACRON'
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
	tags: [
		'component',
		'diacritic'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x - 50 - 100 * width
					y: anchors[0].y + 82
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 50 / 90 )
						angle: 90 + 'deg'
						distr: 0.25
					})
				1:
					x: anchors[0].x + 50 + 100 * width
					y: contours[0].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 50 / 90 )
						angle: 90 + 'deg'
						distr: 0.25
					})
