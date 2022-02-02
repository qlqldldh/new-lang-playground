module num_of_digits

fn test_solution() {
	input_n1 := 150
	input_n2 := 266
	input_n3 := 427
	expected := [3, 1, 0, 2, 0, 0, 0, 2, 0, 0]

	result := solution(input_n1, input_n2, input_n3)
	assert result == expected
}
