// https://www.acmicpc.net/problem/1152 - Number of Words
module num_words

import os

fn solution(sentence string) int {
	return sentence.split(" ").filter(it != "").len
}

fn main() {
	sentence := os.input("")

	println(solution(sentence))
}
