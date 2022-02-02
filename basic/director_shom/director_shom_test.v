module director_shom

fn test_has_end_repr() {
	num_of_tests := 5
	input_strs := ["1666", "2435", "9086", "6656", "6662", "62666"]
	expected := [true, false, false, false, true, true]
	
	for i in 0..num_of_tests {
		result := has_end_repr(input_strs[i])
		assert result == expected[i]
	}
}

fn test_solution() {
	num_of_tests := 5
	input_nums := [2, 3, 6, 187, 500]
	expected := [1666, 2666, 5666, 66666, 166699]

	for i in 0..num_of_tests {
		result := solution(input_nums[i])
		assert result == expected[i]
	}
}
