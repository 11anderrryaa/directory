//
//  Person.swift
//  Directory
//
//  Created by Kaleb Page on 12/3/20.
//

import Foundation

protocol CellData {
    var name: String { get }
    var age: String { get }
}

protocol DetailViewData {
    var name: String { get }
    var age: String { get }
    var email: String { get }
    var phone: String { get }
}

struct Person: CellData, DetailViewData {
    
    var name: String
    var age: String
    var email: String
    var phone: String
}
