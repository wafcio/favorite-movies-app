//
//  JSONParser.swift
//  favorite-movies-app
//
//  Created by Krzysztof Wawer on 19/05/2020.
//  Copyright © 2020 kw. All rights reserved.
//

import Foundation

class JSONParser {
    static func parse (data: Data) -> [String: AnyObject]? {
        let options = JSONSerialization.ReadingOptions()
        do {
            let json = try JSONSerialization.jsonObject(with: data, options: options) as? [String: AnyObject]
            
            return json!
        } catch(let parseError) {
            print("There was an error parsing the JSON: \"\(parseError.localizedDescription)\"")
        }
        return nil
    }
}
