// https://www.acmicpc.net/problem/1157 - Word Study
import os

fn byte_to_idx(b byte) int {
	return int(b) - 97
}

fn idx_to_upper_char(idx int) string {
	return byte(idx + 97).ascii_str().to_upper()
}

fn update_arr(mut arr []int, b byte) {
	arr[byte_to_idx(b)] += 1
}

fn find_max_counted_alphabet(arr []int) string {
	mut max_idx := 0
	for idx in 1..arr.len {
		if arr[max_idx] == arr[idx] {
			return "?"
		}
		if arr[max_idx] < arr[idx] {
			max_idx = idx
		}
	}

	return idx_to_upper_char(max_idx)
}

fn main() {
	str := os.input("").to_lower()
	mut alpha_cnts := []int{len: 26, init: 0}

	for c in str {
		update_arr(mut alpha_cnts, c)
	}

	result := find_max_counted_alphabet(alpha_cnts)
	println(result)
}
