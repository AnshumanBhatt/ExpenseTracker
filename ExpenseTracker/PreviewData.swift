//
//  PreviewData.swift
//  ExpenseTracker
//
//  Created by Anshuman Bhatt on 14/08/24.
//

import Foundation
import SwiftUI

var transcationPreviewData = Transcation(id: 1, date: "01/02/2024", institution: "Abc", account: "ABCD", merchant: "aNSHUMAN", amount: 1121, type: "debit", categoryId: 44, category: "adad", isPending: false, isTransfer: false, isExpense: true, isEdited: false)

var transcationListPreviewData = [Transcation](repeating: transcationPreviewData , count: 10)
