//
//  Stock.swift
//  asim
//
//  Created by Ivan Gubanov on 08/09/2022.
//

import Foundation

struct Stock: Decodable {
    let symbol: String
    let description: String
    let price: Double
}
