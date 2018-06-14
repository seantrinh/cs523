//
//  main.swift
//  CS523_Assignment1
//
//  Created by Sean Trinh on 5/22/18.
//      I pledge my honor that I have abided by the Stevens Honor System.
//  Copyright © 2018 Sean Trinh. All rights reserved.
//

import Foundation

//Exercise 1
func exerciseOne()->Void {
    //let loanAmount: Double = 1000.00
    let interestRateMore: Double = 0.02
    let interestRateLess: Double = 0.01
    
    var amountOwed: Double = 1000.00
    var count = 1
    while amountOwed > 0.00 {
        if amountOwed > 500.00 {
            amountOwed = amountOwed + (amountOwed * interestRateMore)
        }
        else {
            amountOwed = amountOwed + (amountOwed * interestRateLess)
        }
        if amountOwed > 100.00 {
            amountOwed -= 100.00
            let xAmountOwed = Double(round(100*amountOwed)/100)
            print("Monthly Balance \(count): \(xAmountOwed)")
        }
        else {
            let finalPayment: Double = amountOwed
            let xFinalPayment = Double(round(100*finalPayment)/100)
            amountOwed = 0.00
            print("Monthly Balance \(count): 0.00")
            print("Amount of Final Payment: \(xFinalPayment)")
            print("Number of Months: \(count)")
        }
        count += 1
    }
}
//Exercise 2
func exerciseTwo()->Void {
    let weather = 70
    let schedule = 1
    let likeRunning = 8
    if likeRunning >= 4 && schedule <= 2 && weather > 45 && weather < 90 {
        print("Going for a Run")
    }
    else {
        print("Not going for a Run")
    }
}
//Exercise 3
func exerciseThree()->Void {
    let times = [
        "Elena": 341,
        "Thomas": 273,
        "Hamilton": 278,
        "Suzie": 329,
        "Phil": 445,
        "Matt": 402,
        "Alex": 388,
        "Emma": 275,
        "John": 243,
        "James": 334,
        "Jane": 412,
        "Emily": 393,
        "Daniel": 299,
        "Neda": 343,
        "Aaron": 317,
        "Kate": 265,
    ]
    var nameOfPerson: String = ""
    var minimumPersonTime = Double.infinity
    for (name, time) in times {
        if minimumPersonTime > Double(time) {
            minimumPersonTime = Double(time)
            nameOfPerson = name
        }
    }
    print("Fastest Runner: \(nameOfPerson)")
    print("His/Her Time (In Minutes): \(Int(minimumPersonTime))")
}
//Exercise 4
class ATM {
    var name: String
    var number: String
    init(name: String, number: String) {
        self.name = name
        self.number = number
    }
}
class Log {
    var cardNumber: String
    var date: Date
    var details: String
    var sessionNumber: String
    var time: timeb
    var transactionNumber: String
    init(cardNumber: String, date: Date, details: String, sessionNumber: String, time: timeb, transactionNumber: String) {
        self.cardNumber = cardNumber
        self.date = date
        self.details = details
        self.sessionNumber = sessionNumber
        self.time = time
        self.transactionNumber = transactionNumber
    }
}
class InnerCash {
    var bill1: Int
    var bill10: Int
    var bill100: Int
    var bill20: Int
    var bill5: Int
    var bill50: Int
    init(bill1: Int, bill10: Int, bill100: Int, bill20: Int, bill5: Int, bill50: Int) {
        self.bill1 = bill1
        self.bill10 = bill10
        self.bill100 = bill100
        self.bill20 = bill20
        self.bill5 = bill5
        self.bill50 = bill50
    }
}
class Money {
    var value: Float
    init(value: Float) { self.value = value }
}
class Currency {
    var country: String
    var name: String
    var symbol: Character
    init(country: String, name: String, symbol: Character) {
        self.country = country
        self.name = name
        self.symbol = symbol
    }
}
class aBank {
    var code: String
    var name: String
    init(code: String, name: String) {
        self.code = code
        self.name = name
    }
}
class anAccount {
    var initialBalance: Float
    var number: String
    var overdraftLimit: Int
    var owner: String
    init(initialBalance: Float, number: String, overdraftLimit: Int, owner: String) {
        self.initialBalance = initialBalance
        self.number = number
        self.overdraftLimit = overdraftLimit
        self.owner = owner
    }
}
class aCard {
    var expirationDate: String
    var holderName: String
    var holderSurname: String
    var number: String
    var password: String
    init(expirationDate: String, holderName: String, holderSurname: String, number: String, password: String) {
        self.expirationDate = expirationDate
        self.holderName = holderName
        self.holderSurname = holderSurname
        self.number = number
        self.password = password
    }
    func bank() -> aBank {
        let exampleBank = aBank(code:"12345",name:"ExampleBank")
        return exampleBank
    }
}
class Session {
    var lastMessage: String
    var number: String
    
    init(lastMessage: String, number: String) {
        self.lastMessage = lastMessage
        self.number = number
    }
    func account()->anAccount {
        let exampleAccount = anAccount(initialBalance: 0.0, number:"12345", overdraftLimit:1000, owner:"Me")
        return exampleAccount
    }
    func bank()->aBank {
        let exampleBank = aBank(code:"12345",name:"ExampleBank")
        return exampleBank
    }
}
class ATMLogin {
    var password: String
    var user: String
    init(password: String, user: String) {
        self.password = password
        self.user = user
    }
}
class Transaction {
    var amount: Float
    var currentBalance: Int
    var date: Date
    var done: Bool
    var number: String
    var time: timeb
    
    init(amount: Float, currentBalance: Int, date: Date, done: Bool, number: String, time: timeb) {
        self.amount = amount
        self.currentBalance = currentBalance
        self.date = date
        self.done = done
        self.number = number
        self.time = time
    }
    func account() -> anAccount {
        let exampleAccount = anAccount(initialBalance: 0.0, number:"12345", overdraftLimit:1000, owner:"Me")
        return exampleAccount
    }
    func bank() -> aBank {
        let exampleBank = aBank(code:"12345",name:"ExampleBank")
        return exampleBank
    }
    func card() -> aCard {
        let exampleCard = aCard(expirationDate: "05/27/2020", holderName: "Sean", holderSurname: "Trinh", number: "12345",
                                password: "Password12345")
        return exampleCard
    }
}
class Withdrawal: Transaction { }
class Inquiry: Transaction { }
class Deposit: Transaction { }
class Transfer: Transaction {
    var targetAccountNumber: String
    var targetBankCode: String
    init(targetAccountNumber: String, targetBankCode: String, amount: Float, currentBalance: Int,
         date: Date, done: Bool, number: String, time: timeb) {
        self.targetAccountNumber = targetAccountNumber
        self.targetBankCode = targetBankCode
        super.init(amount: amount, currentBalance: currentBalance, date: date, done: done, number: number,
                   time: time)
    }
}
exerciseOne()
print("-----")
exerciseTwo()
print("-----")
exerciseThree()
print("-----")
