// IAlertPresentable.swift
// Created by Anastasiya Kudasheva

import UIKit

// IAlertPresenterDelegate
protocol IAlertPresenterDelegate: AnyObject {
	func present(_ viewControllerToPresent: UIViewController,
				 animated: Bool)
}
