// ViewController.swift
// Created by Anastasiya Kudasheva

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var oreonsCountTextField: UITextField!
	@IBOutlet var calculateButton: UIButton!

	// нужен alertPresenter
	private let networkService = NetworkService()

	private var alertPresenter: AlertPresenterProtocol?

	override func viewDidLoad() {
		super.viewDidLoad()
		alertPresenter = AlertPresenter(vc: self)
		calculateButton.isEnabled = false
	}

	@IBAction func calculateButtonTapped(_ sender: Any) {
		networkService.getCurrencyRate(completion: { [weak self] currencyRate in
			guard let self = self else { return }
			let oreonsCount: Int = Int(self.oreonsCountTextField.text ?? "0") ?? 0
			let rublesCount = currencyRate * oreonsCount


			let tapHandler: (() -> Void) = { [weak self] in
				self?.oreonsCountTextField.text = nil
				self?.calculateButton.isEnabled = false
			}

			let alertModel = AlertModel(title: "По текущему курсу",
										message: "у вас \(rublesCount) рублей",
										buttonTitle: "ok",
										tapHandler: tapHandler)
			self.alertPresenter?.show(alertModel: alertModel)
		})
	}

	@IBAction func textFieldEditingChanged(_ sender: UITextField) {
		if sender.text?.isEmpty ?? true {
			calculateButton.isEnabled = false
		} else {
			calculateButton.isEnabled = true
		}
	}
}
