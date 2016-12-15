exports.glyphs['grave'] =
	glyphName: 'grave'
	characterName: 'GRAVE ACCENT'
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
			position: if typeof parentAnchors[0].position != 'undefined' then parentAnchors[0].position else 0.5
	tags: [
		'component',
		'diacritic'
	]
	transforms: Array(
		['translate', ( contours[0].nodes[0].expandedTo[0].x - contours[2].nodes[1].x ) * anchors[0].position ]
	)
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x - (3)
					y: anchors[0].y - (3)
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 12 / 85 )
						angle: 38 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x - 110 + (2)
					y: contours[0].nodes[0].y + 125 + (8)
					expand: Object({
						width: thickness * ( 55 / 85 )
						angle: 38 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: contours[0].nodes[1].y + 60
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
					y: contours[0].nodes[1].y + 60
					expand: Object({
						width: Math.max( 4, thickness * ( 60 / 85 )  )
						angle: 36 + 'deg'
						distr: 0.5
					})
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					dirOut: Utils.lineAngle(
						contours[0].nodes[0].expandedTo[0].point,
						contours[0].nodes[1].expandedTo[0].point
					) + 0.01
				1:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y
					dirIn: - 90 + 'deg'
					tensionIn: 1.2
					tensionOut: 0.5
					type: 'smooth'
				2:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					dirOut: 0 + 'deg'
					tensionIn: 0.5
					tensionOut: 1.2
					type: 'smooth'
				3:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirIn: Utils.lineAngle(
						contours[0].nodes[0].expandedTo[1].point,
						contours[0].nodes[1].expandedTo[1].point
					) - 0.01
					typeOut: 'line'
