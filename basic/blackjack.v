// https://www.acmicpc.net/problem/2798 - Blackjack
import os
import arrays
import math

const (
	not_selected = -1
	max_val = 300000
	num_to_select = 3
)

fn values_from_input() []int {
	return os.input("").split(" ").map(it.int())
}

fn closest_cards_sum(cards []int, mut selected []int, m int, prev_selected int, seq int) ?int {
	if seq == num_to_select {
		return arrays.sum<int>(selected)
	}

	mut min_sum := 0
	mut result := 0
	mut diff := 0
	mut min_diff := max_val

	for card_idx in (prev_selected + 1)..cards.len {
		selected[seq] = cards[card_idx]
		result = closest_cards_sum(cards, mut selected, m, card_idx, seq + 1)?
		diff  = int(math.abs(result - m))
		if min_diff > diff {
			min_diff = diff
			min_sum = result
		}
	}

	return min_sum
}

fn main() {
	values := values_from_input()
	// n := values[0]
	m := values[1]
	mut cards := values_from_input()
	
	mut selected := []int{len: num_to_select}
	println(closest_cards_sum(cards, mut selected, m, not_selected, 0)?)
}
