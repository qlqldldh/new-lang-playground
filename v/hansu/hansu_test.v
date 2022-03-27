module hansu

fn test_is_hansu() {
	num_of_tests := 5
	nums := [4, 52, 123, 246, 257]
	expected := [true, true, true, true, false]

	for i in 0..num_of_tests {
		result := is_hansu(nums[i])
		assert result == expected[i]
	}
}

fn test_solution() {
	num_of_tests := 5
	input_nums := [110, 1, 210, 1000, 500]
	expected := [99, 1, 105, 144, 119]

	for i in 0..num_of_tests {
		result := solution(input_nums[i])
		assert result == expected[i]
	}
}
