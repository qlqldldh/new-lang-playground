module choose_quadrant

struct Coordinate {
	x int
	y int
}

struct TestParam {
	coordinate Coordinate
	expected int
}

fn test_quadrant() {
	test_params := [
		TestParam {
			coordinate: Coordinate {x: 14, y: 22}
			expected: 1
		},
		TestParam {
			coordinate: Coordinate {-31, 29}
			expected: 2
		},
		TestParam {
			coordinate: Coordinate {-100, -6}
			expected: 3
		},
		TestParam {
			coordinate: Coordinate {13, -5}
			expected: 4
		},
	]

	for test_param in test_params {
		coordinate := test_param.coordinate
		expected := test_param.expected
		result := quadrant(coordinate.x, coordinate.y) or {0}
		assert result == expected
	}
}
