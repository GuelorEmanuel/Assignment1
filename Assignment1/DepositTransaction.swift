//
//  DepositTransaction.swift
//  Assignment1
//
//  Created by Comp1601 on 2015-01-28.
//  Copyright (c) 2015 Comp1601. All rights reserved.
//

import Foundation

class DepositTransaction: Transaction {
    
    
   /*
    * Method to redefine  the base class method and returns the a request to deposit
    * @param account
    * @return amount
    */
    override func postToAccount(account: BankAccount) {
        //for accounts in account.
        return account.deposit(amount)
    }
    
    
}