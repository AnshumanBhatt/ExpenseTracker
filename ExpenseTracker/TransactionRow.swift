//
//  TransactionRow.swift
//  ExpenseTracker
//
//  Created by Anshuman Bhatt on 14/08/24.
//

import SwiftUI
import SwiftUIFontIcon
struct TransactionRow: View {
    var transcation: Transcation
    var body: some View {
        HStack(spacing: 20){
            
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(Color.icn.opacity(0.3))
                .frame(width: 44, height: 44)
                .overlay {
                    FontIcon.text(.awesome5Solid(code: .icons), fontsize: 24, color: Color.icn)
                }
            
            VStack(alignment: .leading,  spacing: 6) {
                Text(transcation.merchant)
                    .font(.subheadline)
                    .bold()
                    .lineLimit(1)
                
                Text(transcation.category)
                    .font(.footnote)
                    .opacity(0.7)
                    .lineLimit(1)
                
                Text(transcation.dateParsed, format: .dateTime.year().month().day())
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            Spacer()
            
            
            Text(transcation.signedAmount, format: .currency(code: "INR"))
                .bold()
                .foregroundColor(transcation.type == TranscationType.credit.rawValue ? Color.txt : .primary)
            
            
            
        }
        .padding([.top, .bottom],8)
    }
}

#Preview {
    TransactionRow(transcation: transcationPreviewData)
    
}
