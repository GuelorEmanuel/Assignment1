//
//  Transaction.swift
//  Assignment1
//
//  Created by Comp1601 on 2015-01-28.
//  Copyright (c) 2015 Comp1601. All rights reserved.
//a

import Foundation

class Transaction: Printable
{
    var amount: Float = 0.0
    
    var description: String {
        return "My Transaction:\(amount)"
    }
    
    
    /*
    * Constructor to initialize the default amount
    * @param amount
    */
    init() {
        
    }
    
    /*
     * Constructor to initialize the default amount
     * @param amount
     */
    init(amount: Float) {
        if (!isNegative(amount)) {
            self.amount = amount
        }
        
    }
    
    /*
     * Virtual method to be redefine by the derived class 
     * @param account
     */
    func postToAccount(account: BankAccount) {
        
       
    }
    
    /*
     * Method to get the amount
     */
    func getAmount()->Float{
        return amount
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
