// https://www.acmicpc.net/problem/2941
import os

const (
	croatia_alphabets = [
		"c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="
	]
)

fn find_str_to_ca(str string, idx int) ?string {
	for alphabet in croatia_alphabets {
		if idx + alphabet.len > str.len {
			continue
		}
		if str[idx..idx + alphabet.len] == alphabet {
			return alphabet
		}
	}

	return "none"
}

fn main() {
	word := os.input("")
	mut result := 0
	mut alphabet := ""
	mut idx := 0

	for idx < word.len {
		alphabet = find_str_to_ca(word, idx)?
		if alphabet == "none" {
			idx += 1
		} else {
			idx += alphabet.len
		}
		result += 1
	}

	println(result)
}
