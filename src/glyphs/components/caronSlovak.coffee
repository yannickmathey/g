exports.glyphs['caronSlovak'] =
	glyphName: 'caron slovak'
	characterName: 'CARON SLOVAK'
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
					x: anchors[0].x
					y: anchors[0].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 12 / 90 )
						angle: - 18 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x + 33 * width + (7)
					y: anchors[0].y + 160 + (0)
					typeOut: 'line'
					expand: Object({
						width: ( 60 / 90 ) * thickness
						angle: - 20 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: contours[0].nodes[1].y + 105
						on: [
							{
								x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2,
								y: contours[0].nodes[0].expandedTo[0].y + ( contours[0].nodes[0].expandedTo[1].y - contours[0].nodes[0].expandedTo[0].y ) / 2,
							},
							{
								x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[1].x - contours[0].nodes[1].expandedTo[0].x ) / 2,
								y: contours[0].nodes[1].expandedTo[0].y + ( contours[0].nodes[1].expandedTo[1].y - contours[0].nodes[1].expandedTo[0].y ) / 2,
							}
						]
					})
					y: contours[0].nodes[1].y + 105
					expand: Object({
						width: Math.max( 4, thickness * ( 60 / 90 )  )
						angle: - 20 + 'deg'
						distr: 0.4
					})
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					tensionOut: 0.7
					dirOut: Utils.lineAngle(
						contours[0].nodes[0].expandedTo[0].point,
						contours[0].nodes[1].expandedTo[0].point
					) + 0.01
				1:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y
					dirIn: 180 + 'deg'
					tensionIn: 1.3
					tensionOut: 0.5
					type: 'smooth'
				2:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					dirOut: - 90 + 'deg'
					tensionIn: 1.2
					tensionOut: 0.5
					type: 'smooth'
				3:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirIn: Utils.lineAngle(
						contours[0].nodes[0].expandedTo[1].point,
						contours[0].nodes[1].expandedTo[1].point
					) - 0.01
					typeOut: 'line'
	transformOrigin: Array( 0, ascenderHeight )
	transforms: Array(
		['translateY', - ( contours[1].nodes[0].expandedTo[0].y - contours[0].nodes[0].expandedTo[1].y ) ]
	)
