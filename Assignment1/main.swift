//
//  main.swift
//  Assignment1
//
//  Created by Comp1601 on 2015-01-28.
//  Copyright (c) 2015 Comp1601. All rights reserved.
//

import Foundation

var bankAccount = BankAccount(balance: -100, owner: "Guelor")
var bankAccountDefault = BankAccount()
var bankAccountTest     = BankAccount(balance: 200, owner: "Guelor")

var transaction = Transaction(amount: -100)
var depositTran = DepositTransaction(amount: -100)
var depositTransaction = DepositTransaction(amount: 300)
var checkTransaction   = CheckTransaction(amount: 499600)
var withDraw           = WithdrawalTransaction(amount:100)


bankAccount.postTransaction(depositTran)



println("--Testing for negative value being entered--\n")
println(bankAccount.withdraw(90))
println(bankAccount.balance)
println(bankAccount.numberOfTransactions())
println(bankAccount.balance)
println(bankAccount.getOwner())
println("--------------------------------------------\n")


println("-----------Testing constructors-------------\n")
println("The balance is :\(bankAccountDefault.getBalance())\n")
println("The Owner is  :\(bankAccountDefault.getOwner())")



println("----------------Testing all classes-------------------------\n")

println("Name: \(bankAccountTest.getOwner())")
println("Your balance is:\(bankAccountTest.getBalance())")
println("Number of transaction: \(bankAccountTest.numberOfTransactions())")
println("Amount to deposit: \(depositTransaction.getAmount())")
bankAccountTest.postTransaction(depositTransaction)
println("Your balance is:\(bankAccountTest.getBalance())")
println("Number of transaction:\(bankAccountTest.numberOfTransactions())")
bankAccountTest.postTransaction(checkTransaction)
println("Your balance is:\(bankAccountTest.getBalance())")
println("Number of transaction:\(bankAccountTest.numberOfTransactions())")
bankAccountTest.postTransaction(withDraw)
println("Your balance is:\(bankAccountTest.getBalance())")
println("Number of transaction:\(bankAccountTest.numberOfTransactions())")