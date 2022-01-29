// https://www.acmicpc.net/problem/14681 - Finding Quadrant
import os

enum Quadrant{
	quadrant1 = 1
	quadrant2 = 2
	quadrant3 = 3
	quadrant4 = 4
}

fn quadrant(x int, y int) ?int {
	if x > 0 && y > 0 {
		return int(Quadrant.quadrant1)
	} else if x < 0 && y > 0 {
		return int(Quadrant.quadrant2)
	} else if x < 0 && y < 0 {
		return int(Quadrant.quadrant3)
	} else if x > 0 && y < 0 {
        return int(Quadrant.quadrant4)
	} else {
		return error("value on outside of scope")
	}
}

fn main() {
	x := os.input("").int()
	y := os.input("").int()
	
	println(quadrant(x, y)?)
}
