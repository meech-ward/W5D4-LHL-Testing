//
//  PersonManagerTests.swift
//  UnitTestsTests
//
//  Created by steve on 2017-11-29.
//  Copyright © 2017 steve. All rights reserved.
//

import XCTest
@testable import UnitTests

class PersonManagerTests: XCTestCase {
  
  // Make sure MockUserDefaults is only created once
  func test_mockUserDefaults_created_once() {
    //Arrange
    _ = MockUserDefaults()
    let expected = 1
    //Act
    let count = MockUserDefaults.timesInitialized
    //Assert
    XCTAssertEqual(expected, count)
  }
  
  // Test save user using a mock
  
  override func setUp() {
    super.setUp()
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
  func test_save_user_count_1() {
    //Arrange
    let sut = PersonManager()
    let person = Person(firstName: "", lastName: "")
    let data = NSKeyedArchiver.archivedData(withRootObject: person)
    let mockDefaults = MockUserDefaults()
    let expected = 1
    // Act
    sut.save(person: data, with: mockDefaults)
    
    //Assert
    XCTAssertEqual(mockDefaults.values.count, expected)
  }
  
  func test_save_user_is_personKey() {
    //Arrange
    let sut = PersonManager()
    let person = Person(firstName: "", lastName: "")
    let data = NSKeyedArchiver.archivedData(withRootObject: person)
    let mockDefaults = MockUserDefaults()
    let expected = 1
    // Act
    sut.save(person: data, with: mockDefaults)
    
    //Assert
    XCTAssertEqual(mockDefaults.values.count, expected)
  }
  
}
