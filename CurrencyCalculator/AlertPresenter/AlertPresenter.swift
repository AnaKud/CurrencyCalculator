// AlertPresenter.swift
// Created by Anastasiya Kudasheva

import UIKit

protocol AlertPresenterProtocol: AnyObject {
	func show(alertModel: AlertModel) 
}

class AlertPresenter: AlertPresenterProtocol {
	private weak var vc: IAlertPresenterDelegate?

	init(vc: IAlertPresenterDelegate?) {
		self.vc = vc
	}

	func show(alertModel: AlertModel) {
		let alertController = UIAlertController(title: alertModel.title,
												message: alertModel.message,
												preferredStyle: .alert)
		let action = UIAlertAction(title: alertModel.buttonTitle,
								   style: .default,
								   handler: { _ in
			alertModel.tapHandler?()
		})
		alertController.addAction(action)

		vc?.present(alertController)
	}
}
