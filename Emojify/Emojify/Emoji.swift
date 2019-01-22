//
//  Emoji.swift
//  Emojify
//
//  Created by Imad ENNEIYMY on 22/01/2019.
//  Copyright © 2019 Imad ENNEIYMY. All rights reserved.
//

import Foundation
import UIKit

class Emoji {
    let id: Int
    let image: UIImage
    let label: String
    
    init(m_id: Int, m_image: String, m_label: String) {
        self.id = m_id
        let dataDecoded : Data = Data(base64Encoded: m_image, options: .ignoreUnknownCharacters)!
        self.image = UIImage(data: dataDecoded)!
        self.label = m_label
    }
}
