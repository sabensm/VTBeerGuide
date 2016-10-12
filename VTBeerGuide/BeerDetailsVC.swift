//
//  BeerDetailsVC.swift
//  VTBeerGuide
//
//  Created by Sabens, Michael G. on 10/11/16.
//  Copyright © 2016 Sabens, Michael G. All rights reserved.
//

import UIKit

class BeerDetailsVC: UIViewController {

    
    @IBOutlet weak var beerNameLabel: UILabel!
    @IBOutlet weak var beerFullImage: UIImageView!
    @IBOutlet weak var beerStyleLabel: UILabel!
    @IBOutlet weak var beerRatingLabel: UILabel!
    @IBOutlet weak var beerDescriptionLabel: UILabel!
    
    @IBAction func closeButtonPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    
    private var _beerDetails: Beer!
    
    var beerDetails: Beer {
        get {
            return _beerDetails
        } set {
            _beerDetails = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        beerNameLabel.text = beerDetails.beerName
        beerStyleLabel.text = beerDetails.beerType
        beerRatingLabel.text = beerDetails.beerRating
        beerDescriptionLabel.text = beerDetails.beerDescription
        
        let beerImageURL = URL(string: beerDetails.beerImage)
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: beerImageURL!)
                DispatchQueue.global().sync {
                    self.beerFullImage.image = UIImage(data: data)
                }
            } catch {
                //handle Error somehow
            }
        }
        
    }


}
