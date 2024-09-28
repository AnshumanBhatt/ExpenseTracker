//
//  RecentTransactionList.swift
//  ExpenseTracker
//
//  Created by Anshuman Bhatt on 19/08/24.
//

import SwiftUI

struct RecentTransactionList: View {
    
    @EnvironmentObject var transcaionListVM: TranscationListViewModel
    var body: some View {
        VStack {
            HStack {
                Text("Recent Transactions")
                    .bold()
                
                Spacer()
                
                NavigationLink {
                    
                } label: {
                    HStack(spacing: 4) {
                        Text("See All")
                        Image(systemName: "chevron.right")
                        
                    }
                    .foregroundColor(Color.txt)
                }
            }
            .padding(.top)
            
            ForEach(Array(transcaionListVM.transcations.prefix(5).enumerated()), id: \.element) {
                index, transaction in
                TransactionRow(transcation: transaction)
                
                Divider()
                    .opacity(index == 4 ? 0 : 1)
            }
        }
        .padding()
        .background(Color.systemBackgorund)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.primary.opacity(0.2), radius: 10, x: 0, y: 5)
    }
}

struct RecentTransactionList_Previews: PreviewProvider {
    static let transactionListVM: TranscationListViewModel = {
        
        let transactionListVM = TranscationListViewModel()
        transactionListVM.transcations = transcationListPreviewData
        return transactionListVM
    } ()
    
    static var previews: some View {
        Group {
            RecentTransactionList()
        }
        .environmentObject(transactionListVM)
    }
}
