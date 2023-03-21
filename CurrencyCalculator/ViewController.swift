// ViewController.swift
// Created by Anastasiya Kudasheva

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var oreonsCountTextField: UITextField!
	@IBOutlet var calculateButton: UIButton!

	// нужен alertPresenter
	private let networkService = NetworkService()

	override func viewDidLoad() {
		super.viewDidLoad()
		calculateButton.isEnabled = false
	}

	@IBAction func calculateButtonTapped(_ sender: Any) {
		networkService.getCurrencyRate { [weak self] currencyRate in
			// "По текущему курсу"
			//"у вас \(rublesCount) рублей"

			// показываем алерт
		}
	}

	@IBAction func textFieldEditingChanged(_ sender: UITextField) {
		// работа с isEnabled
	}
}
