//
//  BeerCellVCTableViewCell.swift
//  VTBeerGuide
//
//  Created by Sabens, Michael G. on 10/10/16.
//  Copyright © 2016 Sabens, Michael G. All rights reserved.
//

import UIKit

class BeerCellVCTableViewCell: UITableViewCell {

    @IBOutlet weak var beerPreviewImage: UIImageView!
    @IBOutlet weak var beerName: UILabel!
    @IBOutlet weak var beerType: UILabel!
    @IBOutlet weak var beerRating: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(individualBeer: Beer) {
        beerName.text = individualBeer.beerName
        beerType.text = individualBeer.beerType
        beerRating.text = individualBeer.beerRating
        
        let beerImageURL = URL(string: individualBeer.beerImage)
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: beerImageURL!)
                DispatchQueue.global().sync {
                    self.beerPreviewImage.image = UIImage(data: data)
                }
            } catch {
                //handle Error somehow
            }
        }
        
    }
    
    
    
}
