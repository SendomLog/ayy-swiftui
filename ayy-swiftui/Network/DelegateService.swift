//
//  DelegateService.swift
//  ayy-swiftui
//
//  Created by iMac on 2023/4/6.
//

import Foundation
import NetworkManager
import Moya

enum DelegateService {
    case memberConfig
}

extension DelegateService: TargetType {
    var path: String {
        switch self {
        case .memberConfig:
            return "member/config"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .memberConfig:
            return .get
        }
    }
    
    var task: Moya.Task {
        switch self {
        case .memberConfig:
            return .requestPlain
        }
    }
}
