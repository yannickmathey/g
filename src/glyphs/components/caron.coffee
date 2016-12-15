exports.glyphs['caron'] =
	glyphName: 'caron'
	characterName: 'CARON'
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
	tags: [
		'component',
		'diacritic'
	]
	components:
		0:
			base: 'circumflex'
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y
			transformOrigin: Array( anchors[0].x, anchors[0].y + 230 / 2 )
			transforms: Array( [ 'scaleY', -1 ] )
