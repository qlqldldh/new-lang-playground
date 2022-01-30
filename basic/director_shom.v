// https://www.acmicpc.net/problem/1436 - Director Shom
import os

const end_repr_num = "666"

fn has_end_repr(s string) bool {
	for i in 0..(s.len - end_repr_num.len + 1) {
		if s[i..(i + end_repr_num.len)] == end_repr_num {
			return true
		}
	}

	return false
}

fn main() {
	n := os.input("").int()
	mut cnt := 1
	mut movie_name_n := end_repr_num.int()

	for cnt < n {
		movie_name_n += 1
		if has_end_repr(movie_name_n.str()) {
			cnt += 1
		}
	}

	println(movie_name_n)
}
