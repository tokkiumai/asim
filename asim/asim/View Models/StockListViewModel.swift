//
//  StockListViewModel.swift
//  asim
//
//  Created by Ivan Gubanov on 08/09/2022.
//

import Foundation

struct StockViewModel {
    
    private var stock: Stock
    
    init(stock: Stock) {
        self.stock = stock
    }
    
    var symbol: String {
        stock.symbol
    }
    
    var description: String {
        stock.description
    }
    
    var price: Double {
        stock.price
    }
    
}

@MainActor
class StockListViewModel: ObservableObject {
    
    @Published var stocks: [StockViewModel] = []
    
    func populateStocks() async {
        
        do {
            let stocks = try await Webservice().getStocks(url: Constants.Urls.latestStocks)
            
            self.stocks = stocks.map(StockViewModel.init)
        } catch {
            print(error)
        }
        
    }
    
}
