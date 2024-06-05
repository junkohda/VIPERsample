//
//  TestResponse.swift
//  VIPERSample
//
//  Created by jun.kohda on 2024/06/05.
//

import Foundation
import ObjectMapper

class TestResponse {
    
    required init?(map: Map) {}
    init() {}
}

extension TestResponse: Mappable {
    func mapping(map: Map) {

    }
}
