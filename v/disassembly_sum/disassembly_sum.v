// https://www.acmicpc.net/problem/2231 - Disassembly Sum
module disassembly_sum

import os
import math

const max_val = 1000000

fn get_disassembly_sum(num int) int {
	num_str := num.str()
	mut result := num

	for n in num_str {
		result += n.ascii_str().int()
	}

	return result
}

fn solution(num int) int {
	mut min_val := max_val
	mut n := num

	for n > 0 {
		n -= 1
		if get_disassembly_sum(n) != num {
			continue
		}

		min_val = int(math.min(min_val, n))
	}

	if min_val == max_val {
		min_val = 0
	}

	return min_val
}

fn main() {
	num := os.input("").int()
	result := solution(num)

	println(result)
}
