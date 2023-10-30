//
//  ResponseQR.swift
//  PaymentQ
//
//  Created by Panca Setiawan on 30/10/23.
//

import Foundation

struct ResponseQR: Codable {
    var bankSource: String?
    var transactionId: String?
    var merchantName: String?
    var transactionAmount: String?
}
