//
//  TranscationModel.swift
//  ExpenseTracker
//
//  Created by Anshuman Bhatt on 14/08/24.
//

import Foundation
import SwiftUIFontIcon

struct Transcation: Identifiable,Decodable, Hashable {
    
    let id: Int
    let date: String
    let institution: String
    let account: String
    var merchant:String
    let amount:Double
    let type: TranscationType.RawValue
    var categoryId: Int
    var category:String
    let isPending:Bool
    var isTransfer:Bool
    var isExpense:Bool
    var isEdited:Bool
    
    var dateParsed: Date {
        date.dateParsed()
    }
    
    var signedAmount: Double{
        return type == TranscationType.credit.rawValue ? amount : -amount
    }
    
}
enum TranscationType:String {
    case debit = "debit"
    case credit = "credit"
}

struct Category {
    
    let id: Int
    let name:String
    let icon: FontAwesomeCode
    var mainCategoryId:Int?
    
}

extension Category {
    
    static let autoAndTransport = Category(id: 1, name: "Auto & Transport", icon: .car_alt)
    static let billsandutilities = Category(id: 2, name: "Bills & Utilities", icon: .file_invoice_dollar)
    static let entertainment = Category(id: 3, name: "Entertainment", icon: .film)
    static let feesAndCharges = Category(id: 4, name: "Fees and Charges", icon: .hand_holding_usd)
    static let foodAndDining = Category(id: 5, name: "Food & Dining", icon: .hamburger)
    static let home = Category(id: 6, name: "Home", icon: .home)
    static let income = Category(id: 7, name: "Income", icon: .dollar_sign)
    static let shopping = Category(id: <#T##Int#>, name: <#T##String#>, icon: <#T##FontAwesomeCode#>)
    static let transfer =
    
    static let publicTransportation =
    static let taxi =
    static let mobilePhone =
    static let moviesAndDVDs =
    static let bankFee =
    static let financeCharge =
    static let groceries =
    static let restaurants =
    static let rent =
    static let homeSupplies =
    static let paycheque =
    static let software =
    static let creditCardPayment =
    
}
