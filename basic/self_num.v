// https://www.acmicpc.net/problem/4673 - Self Number
import os

const max_num = 10000

fn d(n int) int {
	mut result := n
	for c in n.str() {
		result += c.ascii_str().int()
	}

	return result
}

fn recur_d(mut arr []bool, n int) {
	d_n := d(n)
	if d_n > max_num {
		return
	}

	arr[d_n] = false
	recur_d(mut arr, d_n)
}

fn main() {
	mut is_self_number := []bool{len: 10001, init: true}
	for n in 1..max_num {
		if !is_self_number[n] {
			continue
		}

		recur_d(mut is_self_number, n)
	}
	
	// print self numbers
	for num in 1..max_num {
		if !is_self_number[num] {
			continue
		}

		println(num)
	}
}
