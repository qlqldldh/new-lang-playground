// https://www.acmicpc.net/problem/2675 - Repeating String
module repeat_str

import os

fn values_from_input(input_str string) (int, string) {
	arr := input_str.split(" ")
	return arr[0].int(), arr[1]
}

fn repeat_char(c byte, n int) string {
	return c.ascii_str().repeat(n)
}

fn solution(n int, s string) string {
	mut result := ""
	for c in s {
		result += repeat_char(c, n)
	}

	return result
}

fn main() {
	tc := os.input("").int()
	mut n := 0
	mut s := ""

	for _ in 0..tc {
		n, s = values_from_input(os.input(""))
		println(solution(n, s))
	}
}
