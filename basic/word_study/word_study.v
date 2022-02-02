// https://www.acmicpc.net/problem/1157 - Word Study
module word_study

import os

const (
	num_alphabets = 26
	a_ascii_num = 97
	unknown = "?"
)

fn byte_to_idx(b byte) int {
	return int(b) - a_ascii_num
}

fn idx_to_upper_char(idx int) string {
	return byte(idx + a_ascii_num).ascii_str().to_upper()
}

fn update_alphabet_appearance_count(mut arr []int, b byte) {
	arr[byte_to_idx(b)] += 1
}

fn find_max_counted_alphabet(arr []int) string {
	mut max_idx := 0
	for idx in 1..arr.len {
		if arr[idx] != 0 && arr[max_idx] == arr[idx] {
			return unknown
		}
		if arr[max_idx] < arr[idx] {
			max_idx = idx
		}
	}

	return idx_to_upper_char(max_idx)
}

fn solution(str string) string {
	mut alpha_cnts := []int{len: num_alphabets, init: 0}

	for c in str.to_lower() {
		update_alphabet_appearance_count(mut alpha_cnts, c)
	}

	return find_max_counted_alphabet(alpha_cnts)
}

fn main() {
	str := os.input("")
	println(solution(str))
}
