exports.glyphs['C'] =
	unicode: 'C'
	glyphName: 'C'
	characterName: 'LATIN CAPITAL LETTER C'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 70
		spacingRight: 50 * spacing + 90
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: (contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5) + ( contours[0].nodes[1].expandedTo[0].x - ( (contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * 0.5) )) * 0.5
			y: capHeight + ( 45 / 80 ) * diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + 350 + 200 * width - (7),
						contours[0].nodes[2].expandedTo[1].x + 0.25 * ( 74 / 80 ) * thickness + 10
					)
					y: capHeight - 42
					dirOut: 150 + 'deg'
					expand: Object({
						width: ( 75 / 80 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: - 130 + 'deg'
						distr: 0.1
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * ( 345 / 550 )
					y: capHeight + overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 50 / 80 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + (23/80) * thickness * opticThickness
					y: ( 310 / 660 ) * capHeight + (8)
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 98 / 80 ) * thickness * opticThickness
						angle: 18 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * ( 330 / 555 )
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 50 / 80 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[0].expandedTo[0].x + 5
					y: 45
					dirIn: - 155 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 70 / 80 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: 125 + 'deg'
						distr: 0.1
					})
	components:
		0:
			base: ['none', 'serif-curve-inside-auto']
			id: 'bottomtop'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[4].expandedTo[0]
					baseHeight: contours[0].nodes[4].expandedTo[0].point
					noneAnchor: contours[0].nodes[4].expandedTo[0].point
					opposite: contours[0].nodes[4].expandedTo[1].point
					curveEnd: contours[0].nodes[3].expandedTo[0]
					rotationAngle: -15
					rotationCenter: contours[0].nodes[4].expandedTo[0].point
					down: true
					inverseOrder: true
		1:
			base: ['serif-curve-inside-auto', 'none']
			id: 'bottombottom'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[4].expandedTo[1]
					baseHeight: contours[0].nodes[4].expandedTo[0].point
					noneAnchor: contours[0].nodes[4].expandedTo[1].point
					opposite: contours[0].nodes[4].expandedTo[0].point
					curveEnd: contours[0].nodes[3].expandedTo[1]
					rotationAngle: -15
					rotationCenter: contours[0].nodes[4].expandedTo[0].point
			parentParameters:
				serifWidth: Math.min( ( 100 / 65 ) * serifWidth, serifWidth + 35 )
				serifHeight: Math.min( ( 70 / 50 ) * serifHeight, serifHeight + 20 )
				serifMedian: Math.max( 0.23 * serifMedian, serifMedian - 0.12 )
				serifRotate: Math.max( serifRotate, serifRotate + 0.22 )
		2:
			base: ['serif-curve-inside-auto', 'none']
			id: 'topbottom'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[0].expandedTo[1]
					baseHeight: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					curveEnd: contours[0].nodes[1].expandedTo[1]
					rotationAngle: 15
					rotationCenter: contours[0].nodes[0].expandedTo[0].point
					down: true
					inverseOrder: true
			parentParameters:
				serifRotate: Math.max( serifRotate, serifRotate + 0.15 )
				serifWidth: Math.min( ( 115 / 65 ) * serifWidth, serifWidth + 50 )
				serifHeight: Math.min( ( 75 / 50 ) * serifHeight, serifHeight + 25 )
				serifMedian: Math.max( 0.23 * serifMedian, serifMedian - 0.12 )
		3:
			base: ['none', 'serif-curve-inside-auto']
			id: 'toptop'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[0].expandedTo[0]
					baseHeight: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
					curveEnd: contours[0].nodes[1].expandedTo[0]
					rotationAngle: 15
					rotationCenter: contours[0].nodes[0].expandedTo[0].point
			parentParameters:
				serifRotate: Math.max( serifRotate, serifRotate + 0.25 )
