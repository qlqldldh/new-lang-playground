// https://www.acmicpc.net/problem/2577 - number of digits
module num_of_digits

import os

fn update_digits(mut digits []int, n1 int, n2 int, n3 int) {
	for c in (n1 * n2 * n3).str() {
		digits[c.ascii_str().int()] += 1
	}
}

fn solution(n1 int, n2 int, n3 int) []int {
	mut digits := []int{len: 10, init: 0}
	update_digits(mut digits, n1, n2, n3)

	return digits
}

fn main() {
	n1 := os.input("").int()
	n2 := os.input("").int()
	n3 := os.input("").int()
	
	digits := solution(n1, n2, n3)

	for n in digits {
		println(n)
	}
}
