// NetworkService.swift
// Created by Anastasiya Kudasheva

import Foundation

class NetworkService {
	func getCurrencyRate(completion: @escaping((Int) -> Void)) {
		let currencyRate = generateCurrencyRate()
		print("текущий курс \(currencyRate) рублей за 1 ореон")
		sleep(1)
		completion(currencyRate)
	}

	private func generateCurrencyRate() -> Int {
		return Int.random(in: 1...100)
	}
}
