// IAlertPresentable.swift
// Created by Anastasiya Kudasheva

import UIKit

// IAlertPresenterDelegate
protocol IAlertPresenterDelegate: AnyObject {
	func present(_ viewControllerToPresent: UIViewController)
}

extension UIViewController: IAlertPresenterDelegate {
	func present(_ viewControllerToPresent: UIViewController) {
		present(viewControllerToPresent, animated: true, completion: nil)
	}
}
