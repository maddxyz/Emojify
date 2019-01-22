//
//  APIClient.swift
//  Emojify
//
//  Created by Imad ENNEIYMY on 22/01/2019.
//  Copyright © 2019 Imad ENNEIYMY. All rights reserved.
//

import Foundation

struct APIClient {
    static func getEmojiAPI() -> Array<Emoji>{
        var my_emojis: Array<Emoji> = Array();
            let urlString = URL(string: "https://api.myjson.com/bins/d2aac")
        
            if let url = urlString {
                let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                    if error != nil {
                            print(error)
                    } else {
                        if let usableData = data {
                            if let jsonObj = try? JSONSerialization.jsonObject(with: usableData, options: .allowFragments) as? NSDictionary {
                                
                                //getting the avengers tag array from json and converting it to NSArray
                                if let emojiArray = jsonObj!.value(forKey: "data") as? NSArray {
                                    //looping through all the elements
                                    for emojiObj in emojiArray{
                                        if let emojiDict = emojiObj as? NSDictionary {
                                            let m_id = (emojiDict.value(forKey: "id") as! NSNumber).intValue
                                            let m_image = String((emojiDict.value(forKey: "img") as! NSString))
                                            //let m_label = String((emojiDict.value(forKey: "label") as! NSString))
                                            let m_label = "toto"
                                            let emoji = Emoji(m_id: m_id, m_image: m_image, m_label: m_label)
                                            
                                            my_emojis.append(emoji)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            task.resume()
        }
        return my_emojis
    }
}
