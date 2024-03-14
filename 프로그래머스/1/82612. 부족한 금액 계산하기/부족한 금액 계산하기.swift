import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    let cost = (1...count).reduce(0) { $0 + price * $1 }
	return money - cost > 0 ? 0 : -Int64(money - cost)
}