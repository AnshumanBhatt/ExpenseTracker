//
//  TranscationListViewModel.swift
//  ExpenseTracker
//
//  Created by Anshuman Bhatt on 14/08/24.
//

import Foundation
import Combine


final class TranscationListViewModel: ObservableObject {
    @Published var transcations: [Transcation] = []
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        getTransactions()
    }
    
    func getTransactions() {
         guard let url = URL(string: "https://designcode.io/data/transactions.json") else {
            print("Invalid URLR")
            return
        }
        
        URLSession.shared.dataTaskPublisher(for: url)
            .tryMap{(data,response) ->Data in
                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                   dump(response)
                    throw URLError(.badServerResponse)
                }
                
                return data
            }
            .decode(type:[Transcation].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .failure(let error):
                    print("Error fetching transcation", error.localizedDescription)
                case .finished:
                    print("Finised fetching transcstion")
                }
            } receiveValue: { [weak self] result in
                self?.transcations = result
                
            }
            .store(in: &cancellables)

    }
}
