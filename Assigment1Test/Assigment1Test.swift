//
//  Assigment1Test.swift
//  Assigment1Test
//
//  Created by Comp1601 on 2015-01-31.
//  Copyright (c) 2015 Comp1601. All rights reserved.
//

import Cocoa
import XCTest

class Assigment1Test: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case
        XCTAssert(true, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
    /*
     * Method to test the default constructor of BankAccount class and checkForNegative method
     */
    func testBankAccountConstructor() {
        var bankAccount = BankAccount()
        
        XCTAssert(100 == bankAccount.getBalance(), "Pass")
        XCTAssert("TestingAccount" == bankAccount.getOwner(), "Pass")
        XCTAssert(true == bankAccount.isNegative(-100), "Pass")
        XCTAssert(false == bankAccount.isNegative(100), "Pass")
    }
    
    /*
     * Method to test out the Overloaded constructor of BankAccount class
     */
    func testBankAccountConstructorTwo() {
        var bankAccount = BankAccount(balance: 200, owner: "Guelor")
        
        XCTAssert(200 == bankAccount.getBalance(), "Pass")
        XCTAssert("Guelor" == bankAccount.getOwner(), "Pass")
        XCTAssert(0 == bankAccount.numberOfTransactions(), "Pass")
    }
    
    /*
     * Method to test out the constructor of Transaction class
     */
    func testTransaction() {
        var transaction = Transaction(amount: 300)
        
        XCTAssert(300 == transaction.getAmount(), "Pass")
        XCTAssert(true == transaction.isNegative(-1), "Pass")
        XCTAssert(false == transaction.isNegative(1), "Pass")
    }
    
    /*
     * Method to test out DepositTransaction and BankAccount class
     * Testing the postTransaction methods
     */
    func testDepositTransaction() {
        var bankAccount = BankAccount(balance: 200, owner: "Guelor")
        var depTransaction = DepositTransaction(amount: 300)
        
        bankAccount.postTransaction(depTransaction)
        
        XCTAssert(500 == bankAccount.getBalance(), "Pass")
        XCTAssert("Guelor" == bankAccount.getOwner(), "Pass")
        XCTAssert(1 == bankAccount.numberOfTransactions(), "Pass")
    }
    
    
    /*
    * Method to test out WithdrawalTransaction and BankAccount class
    * Testing the postTransaction methods
    */
    func testWithdrawalTransaction() {
        var bankAccount = BankAccount()
        var withDrawTransaction = WithdrawalTransaction(amount: 100)
        
        bankAccount.postTransaction(withDrawTransaction)
        
        XCTAssert(0 == bankAccount.getBalance(), "Pass")
        XCTAssert("TestingAccount" == bankAccount.getOwner(), "Pass")
        XCTAssert(1 == bankAccount.numberOfTransactions(), "Pass")
    }
    
    
    /*
    * Method to test out WithdrawalTransaction and BankAccount class
    * Testing the postTransaction methods
    */
    func testWithdrawalTransactionTwo() {
        var bankAccount = BankAccount(balance: 400, owner: "Guelor")
        var withDrawTransaction = WithdrawalTransaction(amount: 500)
        
        bankAccount.postTransaction(withDrawTransaction)
        
        XCTAssert(400 == bankAccount.getBalance(), "Pass")
        XCTAssert("Guelor" == bankAccount.getOwner(), "Pass")
        XCTAssert(1 == bankAccount.numberOfTransactions(), "Pass")
    }
    
    
    /*
    * Method to test out checkTransaction and BankAccount class
    * Testing the postTransaction methods
    */
    func testCheckTransaction() {
        var bankAccount = BankAccount(balance: 400000, owner: "Guelor")
        var checkTransaction = CheckTransaction(amount: 100000)
        
        bankAccount.postTransaction(checkTransaction)
        
        XCTAssert(500000 == bankAccount.getBalance(), "Pass")
        XCTAssert("Guelor" == bankAccount.getOwner(), "Pass")
        XCTAssert(1 == bankAccount.numberOfTransactions(), "Pass")
    }
    
    
    /*
    * Method to test out DepositTransaction, withDrawalTransaction, and BankAccount class
    * Testing the postTransaction methods
    */
    func testDepositAndWithdrawal() {
        var bankAccount = BankAccount(balance: 400000, owner: "Guelor")
        var depTransaction = DepositTransaction(amount: 100000)
        var withDrawTransaction = WithdrawalTransaction(amount: 500)
        
        bankAccount.postTransaction(depTransaction)
        bankAccount.postTransaction(withDrawTransaction)
        
        XCTAssert(499500 == bankAccount.getBalance(), "Pass")
        XCTAssert("Guelor" == bankAccount.getOwner(), "Pass")
        XCTAssert(2 == bankAccount.numberOfTransactions(), "Pass")
    }
    
    /*
    * Method to test out DepositTransaction, checkTransaction, and BankAccount class
    * Testing the postTransaction methods
    */
    func testDepositAndCheckTransaction() {
        var bankAccount = BankAccount(balance: 400000, owner: "Guelor")
        var depTransaction = DepositTransaction(amount: 50000)
        var checkTransaction = CheckTransaction(amount: 50000)
        
        bankAccount.postTransaction(depTransaction)
        bankAccount.postTransaction(checkTransaction)
        
        XCTAssert(500000 == bankAccount.getBalance(), "Pass")
        XCTAssert("Guelor" == bankAccount.getOwner(), "Pass")
        XCTAssert(2 == bankAccount.numberOfTransactions(), "Pass")
    }
    
    
    /*
    * Method to test out DepositTransaction, checkTransaction, and BankAccount class
    * Testing the postTransaction methods using negative values
    */
    func testDepositAndCheckTransactionTwo() {
        var bankAccount = BankAccount(balance: -400000, owner: "Guelor")
        var depTransaction = DepositTransaction(amount: 50000)
        var checkTransaction = CheckTransaction(amount: 50000)
        
        bankAccount.postTransaction(depTransaction)
        bankAccount.postTransaction(checkTransaction)
        
        XCTAssert(100000 == bankAccount.getBalance(), "Pass")
        XCTAssert("Guelor" == bankAccount.getOwner(), "Pass")
        XCTAssert(2 == bankAccount.numberOfTransactions(), "Pass")
    }
    
    
   /*
    * Method to test out DepositTransaction, checkTransaction, and BankAccount class
    * Testing the postTransaction methods using negative values
    */
    func testDepositAndCheckTransactionThree() {
        var bankAccount = BankAccount(balance: -400000, owner: "Guelor")
        var depTransaction = DepositTransaction(amount: -7000000)
        var checkTransaction = CheckTransaction(amount: -7000000)
        
        bankAccount.postTransaction(depTransaction)
        bankAccount.postTransaction(checkTransaction)
        
        XCTAssert(0 == bankAccount.getBalance(), "Pass")
        XCTAssert("Guelor" == bankAccount.getOwner(), "Pass")
        XCTAssert(2 == bankAccount.numberOfTransactions(), "Pass")
    }
    
    /*
    * Method to test out DepositTransaction, checkTransaction, and BankAccount class
    * Testing the postTransaction methods using negative values
    */
    func testDepositAndCheckTransactionFour() {
        var bankAccount = BankAccount(balance: 400000, owner: "Guelor")
        var depTransaction = DepositTransaction(amount: 50000)
        var checkTransaction = CheckTransaction(amount: 50000)
        
        bankAccount.postTransaction(depTransaction)
        bankAccount.postTransaction(checkTransaction)
        
        XCTAssert(500000 == bankAccount.getBalance(), "Pass")
        XCTAssert("Guelor" == bankAccount.getOwner(), "Pass")
        XCTAssert(2 == bankAccount.numberOfTransactions(), "Pass")
    }
}
