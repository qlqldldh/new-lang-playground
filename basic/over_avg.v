// https://www.acmicpc.net/problem/4344 - over average
import os
import arrays

fn values_from_input(val string) (int, []int) {
	arr := val.split(" ")
	return arr[0].int(), arr[1..].map(it.int())
}

fn average_from_array(arr []int, n int) ?f32 {
	return f32(arrays.sum<int>(arr)? / n)
}

fn main() {
	tc := os.input("").int()
	mut n := 0
	mut scores := []int{}
	mut high_lev_scores := []int{}
	mut avg := 0.0

	for _ in 0..tc {
		n, scores = values_from_input(os.input(""))
		avg = average_from_array(scores, n)?
		high_lev_scores = scores.filter(it > avg)

		println("${f32(high_lev_scores.len) / n * 100:.3f}%")
		scores.clear()
		high_lev_scores.clear()
	}
}
