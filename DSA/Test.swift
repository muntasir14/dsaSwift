//
//  Test.swift
//  DSA
//
//  Created by Ikramuzzaman Muntasir on 8/23/23.
//

import Foundation


struct Landmark: Codable {
    var name: String
    var foundingYear: Int
    
    enum CodingKeys: String, CodingKey {
        case name = "title"
        case foundingYear = "founding_date"
    }
}
