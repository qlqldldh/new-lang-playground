module num_words

fn test_solution() {
	num_of_tests := 3
	input_sentences := [
		"The Curious Case of Benjamin Button",
		" The first character is a blank",
		"The last character is a blank ",
	]
	expected := [6, 6, 6]

	for i in 0..num_of_tests {
		result := solution(input_sentences[i])
		assert result == expected[i]
	}
}
