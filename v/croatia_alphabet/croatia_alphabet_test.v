module croatia_alphabet

struct TestParam {
	word string
	idx int
	expected string
}

fn test_find_croatia_alphabet() {
	test_params := [
		TestParam {
			word: "ljes=njak"
			idx: 0
			expected: "lj"
		},
		TestParam {
			word: "ljes=njak"
			idx: 1
			expected: "j"
		},
		TestParam {
			word: "ljes=njak"
			idx: 2
			expected: "e"
		},
		TestParam {
			word: "ljes=njak"
			idx: 3
			expected: "s="
		},
		TestParam {
			word: "ljes=njak"
			idx: 4
			expected: "="
		},
		TestParam {
			word: "ljes=njak"
			idx: 5
			expected: "nj"
		},
		TestParam {
			word: "ljes=njak"
			idx: 6
			expected: "j"
		},
	]

	for test_param in test_params {
		result := find_croatia_alphabet(test_param.word, test_param.idx)
		assert result == test_param.expected
	}
}
