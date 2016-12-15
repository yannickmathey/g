exports.glyphs['a'] =
	unicode: 'a'
	glyphName: 'a'
	characterName: 'LATIN SMALL LETTER A'
	ot:
		advanceWidth: contours[0].nodes[5].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 10
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[2].x + 13
					y: xHeight - 117
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionOut: 0.95
					expand: Object({
						width: ( 83 / 80 ) * thickness
						angle: 4 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * ( 177 / 321 )
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionIn: 0.95
					tensionOut: 1.1
					expand: Object({
						width: ( 53 / 80 ) * thickness * contrast
						angle: - 119 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 120 + 200 * width - (17),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 83 / 80 ) * thickness + 10
					)
					y: xHeight - 100 - (5)
					dirIn: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 83 / 80 ) * thickness
						angle: - 165 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].expandedTo[1].x
					y: Math.max(
						contours[0].nodes[4].y + Math.sin( 49 / 180 * Math.PI ) * ( 79 / 80 ) * thickness + 24,
						contours[1].nodes[0].y
					)
					dirOut: - 90 + 'deg'
					expand: Object({
						width: ( 80 / 80 ) * thickness
						angle: 180 - 5 + 'deg'
						distr: 1
					})
				4:
					x: contours[0].nodes[3].expandedTo[1].x + ( contours[0].nodes[5].expandedTo[0].x - contours[0].nodes[3].expandedTo[1].x ) * 0.5
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 79 / 80 ) * thickness * contrast
						angle: (180 + 49) / 180 * Math.PI
						distr: 1
					})
				5:
					x: contours[0].nodes[2].x + Math.cos( (- 165 + 90) / 180 * Math.PI ) / ( 83 / 80 ) * thickness + 97
					y: Math.max(
						0,
						contours[0].nodes[4].y + Math.sin( 49 / 180 * Math.PI ) * ( 79 / 80 ) * thickness
					)
					dirIn: - 122 + 'deg'
					expand: Object({
						width: ( 6 / 80 ) * thickness * contrast
						angle: 180 + 120 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[2].expandedTo[1].x ) * ( 18 / 80 )
					y: 70 + (9)
					dirOut: - 130 + 'deg'
					tensionOut: 1.1
					expand: Object({
						width: ( 26 / 80 ) * thickness
						angle: 90 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[1].nodes[2].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[0].x - contours[1].nodes[2].expandedTo[0].x ) * ( 109 / 272 )
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 75 / 80 ) * thickness * contrast
						angle: 55 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + (17)
					y: 94 + (5)
					y: Math.min(
						contours[1].nodes[1].y + ( contours[1].nodes[3].expandedTo[0].y - contours[1].nodes[1].y ) * ( 104 / 275 ),
						( contours[1].nodes[1].y + Math.sin( 55 / 180 * Math.PI ) * ( 75 / 80 ) * thickness * contrast ) + ( contours[1].nodes[3].expandedTo[1].y - ( contours[1].nodes[1].y + Math.sin( 55 / 180 * Math.PI ) * ( 75 / 80 ) * thickness * contrast ) ) * 0.5
					)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 80 / 80 ) * thickness
						angle: 14 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[2].expandedTo[1].x ) * ( 32 / 80 )
					y: ( 265 / 450 ) * xHeight * crossbar - (9)
					dirIn: 185 + 'deg'
					tensionIn: 1.1
					expand: Object({
						width: ( 36 / 80 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0.25
					})
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					dirOut: - 90 + 'deg'
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].expandedTo[0].y - ( 28 / 80 ) * thickness
					dirIn: 180 + 'deg'
					typeOut: 'line'
				2:
					x: contours[0].nodes[0].expandedTo[1].x - 5
					y: contours[2].nodes[1].y
					typeOut: 'line'
				3:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[2].nodes[2].y + 5
					typeOut: 'line'
				4:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
