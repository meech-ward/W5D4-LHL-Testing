//
//  BillComputerTests.swift
//  UnitTestsTests
//
//  Created by steve on 2017-11-29.
//  Copyright © 2017 steve. All rights reserved.
//

import XCTest
@testable import UnitTests

class BillComputerTests: XCTestCase {
    
  // Using a stub of BillComputer test to see if total owing is correctly updated on person
  
  class BillComputerStub: BillComputer {
    override func compute(_ bills: [Bill]) -> Double {
      return 100.0
    }
  }

  func test_billComputer_sets_totalOwing() {
    //Arrange
    let sut = Person(firstName: "", lastName: "")
    let bills = [Bill(amount: 20.0)]
    let stub = BillComputerStub()
    let expected = 100.0
    //Act
    sut.totalOwing(for: bills, with: stub)
    //Assert
    XCTAssertEqual(expected, sut.totalOwing)
  }
  
}
