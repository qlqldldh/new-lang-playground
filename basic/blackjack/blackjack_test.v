module blackjack

struct TestParam {
	m	int
	cards []int
	expected int
}


fn test_closest_cards_sum() ? {
	test_params := [
		TestParam {
			m: 21
			cards: [5, 6, 7, 8]
			expected: 21
		},
		TestParam {
			m: 500
			cards: [93, 181, 245, 214, 315, 36, 185, 138, 216, 295]
			expected: 497
		}
	]

	mut result := 0
	mut selected_cards := []int{len: num_to_select}

	for test_param in test_params {
		m := test_param.m
		cards := test_param.cards
		expected := test_param.expected
		result = closest_cards_sum(cards, mut selected_cards, m, not_selected, 0)?
		assert result == expected
	}
}
