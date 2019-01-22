//
//  CollectionViewCell.swift
//  Emojify
//
//  Created by Imad ENNEIYMY on 22/01/2019.
//  Copyright © 2019 Imad ENNEIYMY. All rights reserved.
//

import Foundation
import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var emojiImage: UIImageView!
    
    func displayContent(image: UIImage) {
        emojiImage.image = image
    }
}
