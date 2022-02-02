// https://www.acmicpc.net/problem/1065 - Hansu
module hansu

import os

fn btoi(b byte) int {
	return b.ascii_str().int()
}

fn is_hansu(n int) bool {
	n_str := n.str()
	if n_str.len < 3 {
		return true
	}

	for i in 2..n_str.len {
		if btoi(n_str[i]) - btoi(n_str[i - 1]) != btoi(n_str[i - 1]) - btoi(n_str[i - 2]) {
			return false
		}
	}
	return true
}

fn solution(num int) int {
	mut result := 0

	for n in 1..(num + 1) {
		if is_hansu(n) {
			result += 1
		}
	}

	return result
}

fn main() {
	num := os.input("").int()
	println(solution(num))
}
