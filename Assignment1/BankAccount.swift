//
//  BankAccount.swift
//  Assignment1
//
//  Created by Comp1601 on 2015-01-28.
//  Copyright (c) 2015 Comp1601. All rights reserved.
//

import Foundation

class BankAccount:Printable
{
    
    var balance: Float                    = 0.0
    var owner:  String                    = "Uknown"
    var transactions: Array<Transaction>  = [Transaction]()
    
    var description: String {
        return "Account of: \(owner), total balance: \(balance)"
        
    }
    
    /*
     * Default constructor
     *
     */
    
    init() {
     //TODO
        owner   = "TestingAccount"
        balance = 100
    }
    
    /*
     * Overloaded constructor
     * @param balance, owner
     */
    
    init(balance:Float, owner: String) {
        if (!isNegative(balance)) {
            self.balance = balance
            
        }
        else {
           self.balance = 0.00
        }
        self.owner   = owner
        
    }
    
    /*
     * Method to deposit the an amount to the total balance
     * @param amount
     */
    
    func deposit(amount: Float) {
        balance += amount
    }
    
    /*
     * Method to withdraw from an amount from the total balance
     * @param amount
     */
    
    func withdraw(amount: Float) {
        //TODO
        if (amount <= balance) {
            balance -= amount
        }
        else {
            println("Insufficient amount")
        }
    }
    
    /*
     * Method to post the transaction
     * @param transaction
     */
    
    func postTransaction(transaction:Transaction) {
        transaction.postToAccount(self)
        transactions.append(transaction)

        
    }
    
    
    /*
     * Method to return the total amount of transaction that has been processed
     * @return the amount of transaction processed transaction
     */
    func numberOfTransactions()-> Int {
        //TO DO
        return transactions.count
        
    }
    
    /*
     * Method to get the balance
     * @return balance
     */
    func getBalance()->Float {
        return balance
    }
    
   /*
    * Method to get the the owner of the account
    * @return owner
    */
    func getOwner()->String {
        return owner
    }
    
    /*
     * Method to check if the amount entered is greater then 0
     * @param check
     * @return true/false
     */
    func isNegative(check:Float)->Bool {
        if (check > 0) {
            return false
        }
        else {
            return true
        }
    }
    
    
    

    
}
