// AlertModel.swift
// Created by Anastasiya Kudasheva

import Foundation

struct AlertModel {
	let title: String?
	let message: String?
	let buttonTitle: String
	let tapHandler: (() -> Void)?

	init(title: String?,
		 message: String?,
		 buttonTitle: String,
		 tapHandler: (() -> Void)?) {
		self.title = title
		self.message = message
		self.buttonTitle = buttonTitle
		self.tapHandler = tapHandler
	}
}
