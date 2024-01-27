//
//  APICaller.swift
//  TableView Infinite Scroll
//
//  Created by Macbook Air 2017 on 18. 1. 2024..
//

import Foundation

class APICaller {
    
    static var isPaginating = false
    
    // mocking the data
    
    static func fetchData(pagination: Bool = false, completion: @escaping (Result<[String], Error>) -> Void) {
        
        if pagination {
            isPaginating = true
        }
        
        // we are creating a delay
        DispatchQueue.global().asyncAfter(deadline: .now() + (pagination ? 3 : 2), execute: {
            let originalData = [
                "tomato",
                "orange",
                "potato",
                "cucumber",
                "banana",
                "strawberry",
                "tomato",
                "orange",
                "tomato",
                "orange",
                "potato",
                "cucumber",
                "banana",
                "strawberry",
                "potato",
                "cucumber",
                "banana",
                "strawberry",
                "tomato",
                "orange",
                "potato",
                "cucumber",
                "tomato",
                "orange",
                "potato",
                "cucumber",
                "banana",
                "strawberry"
            ]
            let newData = [
                "coffe",
                "juice",
                "iced coffe",
                "sprite",
                "comboucha",
                "schweppes",
                "tomato",
                "orange",
                "tomato",
                "orange",
                "potato"
            ]
            completion(.success(pagination ? newData : originalData))
            if pagination {
                isPaginating = false
            }
        })
    }
}
