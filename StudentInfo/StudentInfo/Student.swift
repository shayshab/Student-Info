//
//  Student.swift
//  StudentInfo
//
//  Created by DhakaLive on 1/21/20.
//  Copyright © 2020 DhakaLive. All rights reserved.
//

import Foundation

class Student {
    
    var firstName: String
    var lastName: String
    var mobile: String
    var address: String
    
    init(firstName: String, lastName: String, mobile: String, address: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.mobile = mobile
        self.address = address
    }
}
