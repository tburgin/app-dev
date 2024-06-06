//
//  Program.swift
//  Athena
//
//  Created by student on 5/16/24.
//

import SwiftData
import Foundation
struct Program: Codable {
    var id: Int
    var title: String
    var description: String
    var categories: [Category]
    var eligibilities: [Eligibility]
    var date: String
    var location: String
    var cost: Int
    var appDeadline: Date
    var link: String
    var archived: Bool
}
extension Date {
    init(_ dateString:String) {
        let dateStringFormatter = DateFormatter()
        dateStringFormatter.dateFormat = "yyyy-MM-dd"
        dateStringFormatter.locale = NSLocale(localeIdentifier: "en_US_POSIX") as Locale
        let date = dateStringFormatter.date(from: dateString)!
        self.init(timeInterval:0, since:date)
    }
}

//@Model
//class Program: Identifiable, Codable {
//    let id = UUID()
//    let name: String = ""
//    var descr: String = ""
//    var tags: [String]
//    let deadline = Date()
//    let startDate = Date()
//    let endDate = Date()
//    let location: String = ""
//    let gradeLevel: Int = 0
//    let price: Decimal = 0.0
//    var applied: Bool = false
//    
//    enum CodingKeys: String,CodingKey {
//        case id, name, descr, tags, deadline, startDate, endDate, location, gradeLevel, price, applied
//      }
//
//    
//    init(name: String, descr: String, deadline: String, tags: [String], startDate: String, endDate: String, location: String, gradeLevel: Int, price: Decimal){
//        self.name = name
//        self.descr = descr
//        for tag in tags{
//            self.tags.append(tag)
//        }
//        self.deadline = toDate(inputDate: deadline)
//        self.startDate = toDate(inputDate: startDate)
//        self.endDate = toDate(inputDate: endDate)
//        self.location = location
//        self.gradeLevel = gradeLevel
//        self.price = price
//        self.applied = false
//    }
//    
//    required init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.name = try container.decode(String.self, forKey: .name)
//        self.descr = try container.decode(String.self, forKey: .descr)
//        self.tags = try container.decode([String].self, forKey: .tags)
//        self.deadline = try container.decode(Date.self, forKey: .deadline)
//        self.startDate = try container.decode(Date.self, forKey: .startDate)
//        self.endDate = try container.decode(Date.self, forKey: .endDate)
//        self.location = try container.decode(String.self, forKey: .location)
//        self.gradeLevel = try container.decode(Int.self, forKey: .gradeLevel)
//        self.price = try container.decode(Decimal.self, forKey: .price)
//        self.applied = try container.decode(Bool.self, forKey: .applied)
//    }
////    func encode(to encoder: Encoder) throws {
////        var container = encoder.container(keyedBy: CodingKeys.self)
////        try container.encode(name, forKey: .name)
////        try container.encode(descr, forKey: .descr)
////        try container.encode(tags, forKey: .tags)
////        try container.encode(deadline, forKey: .deadline)
////        try container.encode(startDate, forKey: .startDate)
////        try container.encode(endDate, forKey: .endDate)
////        try container.encode(location, forKey: .location)
////        try container.encode(gradeLevel, forKey: .gradeLevel)
////        try container.encode(price, forKey: .price)
////        try container.encode(applied, forKey: .applied)
////    }
////    
//    func decodeJSONFile(fileName: String) throws -> [Program] {
//      let decoder = JSONDecoder()
//        decoder.dateDecodingStrategy = .iso8601
//
//      let path = Bundle.main.path(forResource: "sample.json", ofType: "json")!
//      let data = try Data(contentsOf: URL(fileURLWithPath: path))
//
//      return try decoder.decode([Program].self, from: data)
//    }
//    
//    
//    func toDate(inputDate: String) -> Date{
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ssZZZ"
//        guard let result = dateFormatter.date(from: inputDate) as Date? else{
//            let result = Date()
//            return result
//        }
//        return result
//    }
//    
//}
