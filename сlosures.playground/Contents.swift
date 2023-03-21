import UIKit

// про функции вообще
func plus(_ num1: Int, _ num2: Int) -> Int {
	return num1 + num2
}

// про синтаксис замыканий
var closure: ((Int, Int) -> Int)? = { (num1, num2) in
	return num1 + num2
}

let value1 = plus(1,2)
let value2 = closure?(1,2)

// про сокращения названий аргументов замыканий
var closure1: ((Int, Int) -> Int) = {
	return $0 + $1
}

let value3 = closure1(1,2)

// про сбегающие замыкания

