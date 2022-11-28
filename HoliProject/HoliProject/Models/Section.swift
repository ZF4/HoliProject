//
//  Sections.swift
//  HoliProject
//
//  Created by Zachary Farmer on 11/17/22.
//

import Foundation

struct Section: Hashable {
    var id = UUID()
    
    var type: SectionType
    var title: String
    var subtitle: String
    var items: [Item]
    
    
    init(type: SectionType, title: String = "", subtitle: String = "", items: [Item]) {
        
        self.type = type
        self.title = title
        self.subtitle = subtitle
        self.items = items
    }
    
    enum ItemSectionType: String {
        case header
        case detailHeader
        case searchCell
        case subHeader
        case subHeader2
        case outdoorEvents
        case festival
        case newEvents
        case photo
        case largePhoto
        case hikingEvent
        case text
        case smallest
        case map
        case smallText
        case newPhoto
        case joinEvent
    }
    
    struct SectionType: RawRepresentable, Hashable {
        typealias RawValue = String
        var rawValue: String
        
        init(rawValue: String) {
            self.rawValue = rawValue
        }
        
        static let header = SectionType(rawValue: Section.ItemSectionType.header.rawValue)
        static let detailHeader = SectionType(rawValue: Section.ItemSectionType.detailHeader.rawValue)
        static let searchCell = SectionType(rawValue: Section.ItemSectionType.searchCell.rawValue)
        static let subHeader = SectionType(rawValue: Section.ItemSectionType.subHeader.rawValue)
        static let subHeader2 = SectionType(rawValue: Section.ItemSectionType.subHeader2.rawValue)
        static let outdoorEvents = SectionType(rawValue: Section.ItemSectionType.outdoorEvents.rawValue)
        static let festival = SectionType(rawValue: Section.ItemSectionType.festival.rawValue)
        static let newEvents = SectionType(rawValue: Section.ItemSectionType.newEvents.rawValue)
        static let photo = SectionType(rawValue: Section.ItemSectionType.photo.rawValue)
        static let largePhoto = SectionType(rawValue: Section.ItemSectionType.largePhoto.rawValue)
        static let hikingEvent = SectionType(rawValue: Section.ItemSectionType.hikingEvent.rawValue)
        static let text = SectionType(rawValue: Section.ItemSectionType.text.rawValue)
        static let smallest = SectionType(rawValue: Section.ItemSectionType.smallest.rawValue)
        static let map = SectionType(rawValue: Section.ItemSectionType.map.rawValue)
        static let smallText = SectionType(rawValue: Section.ItemSectionType.smallText.rawValue)
        static let newPhoto = SectionType(rawValue: Section.ItemSectionType.newPhoto.rawValue)
        static let joinEvent = SectionType(rawValue: Section.ItemSectionType.joinEvent.rawValue)



        
        
    }
}
