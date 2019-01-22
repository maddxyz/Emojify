//
//  SecondViewController.swift
//  Emojify
//
//  Created by Imad ENNEIYMY on 22/01/2019.
//  Copyright © 2019 Imad ENNEIYMY. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate  {

    @IBOutlet var emojiCollection: UICollectionView!
    
    var my_data: Array<Emoji> = Array()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        my_data = APIClient.getEmojiAPI()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return my_data.count
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! CollectionViewCell
        
        let emoji = my_data[indexPath.row]
        
        cell.displayContent(image: emoji.image)
        
        return UICollectionViewCell()
    }


}

