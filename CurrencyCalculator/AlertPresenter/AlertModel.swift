// AlertModel.swift
// Created by Anastasiya Kudasheva

import Foundation

struct AlertModel {
	let title: String?
	let message: String?
	let buttonTitle: String
	let tapHandler: (() -> Void)?
}
