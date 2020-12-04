//
//  DirectoryTests.swift
//  DirectoryTests
//
//  Created by Kaleb Page on 12/3/20.
//

import XCTest
@testable import Directory

class DirectoryTests: XCTestCase {
    

    func testWithParams_SetsRequiredParams(){
        
        let sut = Person(name: "John", age: "21", email: "Something@gmail.com", phone:
            "0000000")
        
        XCTAssertEqual(sut.name, "John")
        XCTAssertEqual(sut.age, "21")
        XCTAssertEqual(sut.email, "Something@gmail.com")
        XCTAssert(sut.email.contains("@"))
        XCTAssert(sut.email.contains(".com"))
        XCTAssertEqual(sut.phone, "0000000")
        XCTAssert(sut.phone.count == 7)
        
        XCTAssert(Int(sut.age) != nil)
        XCTAssert(Int(sut.phone) != nil)
    }
    
        
        /*var people: [CellData] = []
        
        let sut = Person(name: "John", age: "21", email: "email", phone: "phone") as CellData
        
        people.append(sut)
        
        let indexPath = IndexPath(row: 0, section: 0)
        
        let TVC = ViewController()
        TVC.people = people

        TVC.loadViewIfNeeded()
        TVC.tableView.reloadData()
        XCTAssertEqual(sut.name, "John")
        XCTAssertEqual(sut.age, "21")
        XCTAssertEqual(TVC.tableView.cellForRow(at: indexPath)?.textLabel?.text, "John")*/
        
        
    
    
    
    
    
    
    

}
