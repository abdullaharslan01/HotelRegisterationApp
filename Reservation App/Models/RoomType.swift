//
//  RoomType.swift
//  Reservation App
//
//  Created by abdullah on 12.03.2024.
//

import Foundation


struct RoomType: Equatable{
    // MARK: - Properties
    var id: Int
    var naem: String
    var shortName: String
    var price: Int
    
    // MARK: - Functions
   static func == (lhs: RoomType, rhs: RoomType) -> Bool {
        return lhs.id == rhs.id
    }
}
