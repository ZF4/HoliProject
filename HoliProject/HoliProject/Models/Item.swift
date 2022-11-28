//
//  Items.swift
//  HoliProject
//
//  Created by Zachary Farmer on 11/17/22.
//

import Foundation

struct Item: Hashable {
    var id = UUID()
    var title: String
    var subtitle: String
    var image: String
    
    init(title: String = "", subtitle: String = "", image: String = "") {
        self.title = title
        self.subtitle = subtitle
        self.image = image
    }
    
}
