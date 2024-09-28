//
//  extensionstoColor.swift
//  ExpenseTracker
//
//  Created by Anshuman Bhatt on 03/08/24.
//

import Foundation
import SwiftUI

extension Color {   
    static let backgrund = Color("Background")
    static let icn = Color("Icon")
    static let txt = Color("Text")
    static let systemBackgorund = Color(uiColor: .systemBackground)
    
    
    
}

extension DateFormatter {
    static let allNumbericIndia: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        
        return formatter
    }()
}
extension String {
    func dateParsed() -> Date {
        guard  let parseddate = DateFormatter.allNumbericIndia.date(from: self) else {
            return Date()}
        
        return parseddate
        }
    }

