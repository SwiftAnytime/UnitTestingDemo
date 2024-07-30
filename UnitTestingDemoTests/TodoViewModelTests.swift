//
//  TodoViewModelTests.swift
//  UnitTestingDemoTests
//
//  Created by Etisha Garg on 29/07/24.
//

import XCTest
@testable import UnitTestingDemo

final class TodoViewModelTests: XCTestCase {
    
    private var sut: TodoViewModel!

    override func setUp() {
        super.setUp()
        sut = TodoViewModel()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func test_addTask() {
        // Arrange
        let initialTaskCount = sut.tasks.count
        let newTodoTask = "Test Task"
            
        // Act
        sut.addTask(name: newTodoTask)
            
        // Assert
        XCTAssertEqual(sut.tasks.count, initialTaskCount + 1)
        XCTAssertEqual(sut.tasks.last?.name, newTodoTask)
    }
    
    func test_addTask_withEmptyTask() {
        // Given
        let initialTaskCount = sut.tasks.count
            
        // When
        sut.addTask(name: "")
            
        // Then
        XCTAssertEqual(sut.tasks.count, initialTaskCount)
    }

}
