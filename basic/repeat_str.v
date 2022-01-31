// https://www.acmicpc.net/problem/2675 - Repeating String
import os

fn values_from_input(input_str string) (int, string) {
	arr := input_str.split(" ")
	return arr[0].int(), arr[1]
}

fn repeat_char(c byte, n int) string {
	return c.ascii_str().repeat(n)
}

fn main() {
	tc := os.input("").int()
	mut result := ""
	mut n := 0
	mut s := ""

	for _ in 0..tc {
		n, s = values_from_input(os.input(""))
		for c in s {
			result += repeat_char(c, n)
		}

		println(result)
		result = ""
	}
}
