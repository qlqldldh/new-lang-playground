// https://www.acmicpc.net/problem/1152 - Number of Words
import os

fn main() {
	sentence := os.input("")

	println(sentence.split(" ").len)
}
