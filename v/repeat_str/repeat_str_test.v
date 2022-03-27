module repeat_str

fn test_repeat_char() {
	repeat_count := 3
	input_bytes := [
		"c"[0], "s"[0], "t"[0]
	]
	expected := ["ccc", "sss", "ttt"]

	for i, input_byte in input_bytes {
		assert repeat_char(input_byte, repeat_count) == expected[i]
	}
}

fn test_solution() {
	input_strs := ["ABC", "/HTP"]
	input_char_count := [3, 5]
	expected := ["AAABBBCCC", "/////HHHHHTTTTTPPPPP"]

	for i, input_str in input_strs {
		assert solution(input_char_count[i], input_str) == expected[i]
	}
}
