module disassembly_sum

fn test_get_disassembly_sum() {
	num_of_tests := 5
	nums := [256, 312, 578, 114, 905]
	expected := [269, 318, 598, 120, 919]

	for i in 0..num_of_tests {
		result := get_disassembly_sum(nums[i])
		assert result == expected[i]
	}
}

fn test_solution() {
	num := 216
	expected := 198

	result := solution(num)
	assert result == expected
}
