//
//  BaseModel.swift
//  ayy-swiftui
//
//  Created by iMac on 2023/4/6.
//

import Foundation

struct BaseEmptyModel: Codable { }

struct BaseModel<D: Codable>: Codable {
    var code: Int
    var data: D?
    var message: String
}
