//
//  BeerModel.swift
//  xcode_ios_class
//
//  Created by Rezo on 30.10.2023.
//

import Foundation

struct BeerDTO: Decodable {
    let id: Int
    let name: String
    let tagline: String
    let imageUrl: URL
    
}
