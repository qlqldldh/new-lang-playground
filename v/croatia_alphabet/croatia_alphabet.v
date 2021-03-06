// https://www.acmicpc.net/problem/2941
module croatia_alphabet

import os

const (
	croatia_alphabets = [
		"c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="
	]
)

fn find_croatia_alphabet(str string, idx int) string {
	for alphabet in croatia_alphabets {
		if idx + alphabet.len > str.len {
			continue
		}
		if str[idx..idx + alphabet.len] == alphabet {
			return alphabet
		}
	}

	return str[idx].ascii_str()
}

fn main() {
	word := os.input("")
	mut result := 0
	mut alphabet := ""
	mut idx := 0

	for idx < word.len {
		alphabet = find_croatia_alphabet(word, idx)
		idx += alphabet.len
		result += 1
	}

	println(result)
}
