//
//  Double+Extensions.swift
//  asim
//
//  Created by Ivan Gubanov on 08/09/2022.
//

import Foundation

extension Double {
    func formatAsCurrency() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.maximumFractionDigits = 2
        
        return formatter.string(from: NSNumber(value: self)) ?? "N/A"
    }
}
