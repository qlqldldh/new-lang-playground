module word_study

fn test_byte_to_idx() {
	input_bytes := [
		"a"[0], "b"[0], "f"[0], "z"[0]
	]
	expected := [0, 1, 5, 25]

	for i, input_byte in input_bytes {
		assert byte_to_idx(input_byte) == expected[i]
	}
}

fn test_idx_to_upper_char() {
	input_idxs := [0, 1, 5, 25]
	expected := ["A", "B", "F", "Z"]

	for i, input_idx in input_idxs {
		assert idx_to_upper_char(input_idx) == expected[i]
	}
}

fn test_solution() {
	input_strs := [
		"Mississipi",
		"zZa",
		"z",
		"baaa",
	]
	expected := ["?", "Z", "Z", "A"]

	for i, input_str in input_strs {
		assert solution(input_str) == expected[i]
	}
}
