//
//  PersonTests.swift
//  UnitTestsTests
//
//  Created by steve on 2017-11-29.
//  Copyright © 2017 steve. All rights reserved.
//

import XCTest
@testable import UnitTests

class PersonTests: XCTestCase {
  
  // 3 Types of Unit Tests
  
  // 1. Return Value
  
  func test_Person_init_called_once() {
    // Arrange
    class FakePerson: Person {
      var count = 0
      override init(firstName: String, lastName: String) {
        count += 1
        super.init(firstName: firstName, lastName: lastName)
      }
    }
    let sut = FakePerson(firstName: "", lastName: "")
    let expected = 1
    //Act
    let count = sut.count
    // Assert
    XCTAssertEqual(expected, count)
    
  }
  
  func test_firstName() {
    // Arrange
    let sut = Person(firstName: "fred", lastName: "")
    let expected = "fred"
    // Assert
    XCTAssertEqual(sut.firstName, expected)
  }
  
  func test_fullName() {
    // Arrange
    let sut = Person(firstName: "fred", lastName: "flintstone")
    let expected = "fred flintstone"
    // Act
    let fullName = sut.fullName
    
    // Assert
    XCTAssertEqual(expected, fullName)
  }
  
  // State Test
  
  func test_init_bill_called_once() {
    // Arrange
    class FakeBill: Bill {
      var count = 0
      override init(amount: Double) {
        super.init(amount: amount)
        count += 1
      }
    }
    let sut = FakeBill(amount: 0.0)
    // Act
    let count = sut.count
    let expected = 1
    // Assert
    XCTAssertEqual(expected, count)
  }
  
  func test_pay_bill() {
    // Arrange
    let sut = Person(firstName: "", lastName: "")
    let bill = Bill(amount: 20.0)
    let expected = 1
    // Act
    sut.pay(bill)
    // Assert
    XCTAssertEqual(expected, sut.bills.count)
    
  }
  
}
























