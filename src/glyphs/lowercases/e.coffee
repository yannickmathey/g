exports.glyphs['e'] =
	unicode: 'e'
	glyphName: 'e'
	characterName: 'LATIN SMALL LETTER E'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 50
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + 200 * width + 185 - (2),
						contours[0].nodes[2].expandedTo[1].x + 0
					)
					y: Math.max(
						95 + (1),
						contours[0].nodes[1].y + Math.sin( 60 / 180 * Math.PI ) * ( 86 / 80 ) * thickness + 30
					)
					dirOut: - 120 / 180 * Math.PI
					expand: Object({
						width: ( 10 / 80 ) * thickness * contrast * contrastExtremity
						angle: 108 + 'deg'
						distr: 0.1
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.55
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 86 / 80 ) * thickness * contrast
						angle: 60 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + (20/80) * thickness
					y: ( 205 / 450 ) * xHeight + (11)
					dirIn: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 91 / 80 ) * thickness
						angle: 30 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.55
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 47 / 80 ) * thickness * contrast
						angle: - 110 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[0].expandedTo[0].x
					y: ( 247 / 450 ) * xHeight * crossbar
					dirIn: 90 + 'deg'
					expand: Object({
						width: ( 72 / 80 ) * thickness
						angle: 180 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[4].expandedTo[0].x - ( 5 / 80 ) * thickness
					y: contours[0].nodes[4].expandedTo[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 46 / 80 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 0.1
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[1].x - contours[0].nodes[2].expandedTo[0].x ) * 0.9
					y: contours[1].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 46 / 80 ) * thickness * contrast * contrastExtremity
						angle: 90 + 'deg'
						distr: 0.1
					})
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirIn: 0 + 'deg'
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					dirIn: contours[0].nodes[0].dirOut - Math.min( 30, ( 30 / 80 ) * thickness * contrast * contrastExtremity ) / 180 * Math.PI
					typeOut: 'line'
				2:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
				3:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					dirOut: contours[0].nodes[0].dirOut
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y
					typeOut: 'line'
				1:
					x: contours[0].nodes[4].expandedTo[0].x
					y: contours[0].nodes[4].expandedTo[0].y
					typeOut: 'line'
				2:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[0].nodes[4].expandedTo[0].y
					typeOut: 'line'
