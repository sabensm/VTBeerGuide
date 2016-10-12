//
//  ViewController.swift
//  VTBeerGuide
//
//  Created by Sabens, Michael G. on 10/10/16.
//  Copyright © 2016 Sabens, Michael G. All rights reserved.
//

import UIKit

class MainScreenVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var arrayOfBeers = [Beer] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let beer1 = Beer(beerName: "It's Complicated Being A Wizard", beerType: "Double IPA", beerRaiting: "4.3 / 5", beerImage: "http://www.vtbeer.org/wp-content/uploads/2015/11/burlington-beer-company-its-complicated-being-a-wizard.jpg", beerDescription: "Our Double IPA has a radiant straw orange glow with which we immerse massive quantities of hops per gallon for a bold, yet complex hop flavor")
        
        let beer2 = Beer(beerName: "Heady Topper", beerType: "Double IPA", beerRaiting: "5.0 / 5", beerImage: "https://scontent.cdninstagram.com/t51.2885-15/s640x640/sh0.08/e35/1172037_1675129386070011_1185921274_n.jpg", beerDescription: "An American Double IPA. 75 IBU 8.0% ABV. Drink from the can.")
        
        let beer3 = Beer(beerName: "Switchback Ale", beerType: "American Pale Ale", beerRaiting: "3.8 / 5", beerImage: "https://i.vimeocdn.com/portrait/6514892_640x640", beerDescription: "Using only traditional ingredients, Switchback Ale is a reddish-amber ale which is particularly well-balanced, allowing for complexity of flavor coupled with an unusually smooth and refreshing character. Five different malts, select hop varieties, and our own specially cultivated yeast create an ale which leads with hop flavors and a subtle impression of fruit (our yeast's contribution), followed by a palate pleasing malty finish. Our own special process uses the yeast to naturally carbonate the beer, and we leave it unfiltered. The result is a satisfying brew full of flavor with a remarkably clean and smooth finish.")
        
        let beer4 = Beer(beerName: "Focal Banger", beerType: "IPA", beerRaiting: "4.1 / 5", beerImage: "https://scontent.cdninstagram.com/t51.2885-15/s640x640/sh0.08/e35/12479466_447955638746376_275790748_n.jpg", beerDescription: "An American IPA, hopped judiciously with Citra and Mosaic.")
        
        let beer5 = Beer(beerName: "Strawberry Whale Cake", beerType: "American Fruit Beer", beerRaiting: "4.0 / 5", beerImage: "https://8583b52b4a309671f69d-b436b898353c7dc300b5887446a26466.ssl.cf1.rackcdn.com/11058599_burlington-beer-company-beer-releases-for_88b6f42f_m.jpg", beerDescription: "Cream Ale with Vermont Strawberries")
        
        let beer6 = Beer(beerName: "Sip of Sunshine", beerType: "IPA", beerRaiting: "4.8 / 5", beerImage: "https://scontent.cdninstagram.com/hphotos-xaf1/t51.2885-15/e15/11311641_1633815503522641_1566188760_n.jpg", beerDescription: "This lupulin-ladin India Pale Ale is packed with juicy tropical fruit character, bright floral aromas and delectable layers of hop flavor. Pour mindfully, inhale deeply and enjoy a tropical vacation in a glass. Always store cold, enjoy fresh and stay cool!")
        
        let beer7 = Beer(beerName: "Edward", beerType: "American Pale Ale", beerRaiting: "4.2 / 5", beerImage: "http://scontent-b.cdninstagram.com/hphotos-xpa1/t51.2885-15/10467920_659964257414089_1175758652_n.jpg", beerDescription: "Edward (1917-2002) is our grandfather; Hill Farmstead Brewery rests upon the land that was once home to him and his five children. In his honor, this American Pale Ale is dutifully crafted from American malted barley, a plethora of American hops, our ale yeast and water from Edward’s well. It is unfiltered, naturally carbonated, and dry hopped. Aromatic and flowery, with impressions of citrus and pine, this is the ale that I dream to have shared with Edward. ")
        
        let beer8 = Beer(beerName: "Lush", beerType: "IPA", beerRaiting: "4.7 / 5", beerImage: "https://scontent.cdninstagram.com/t51.2885-15/s640x640/sh0.08/e35/13259651_1750247718554222_1068973747_n.jpg", beerDescription: "A double IPA with luxuriant aromatics and succulent flavors. The combination of hops from both hemispheres and our ale yeast complement each other to create rich, juicy character. ABV: 8.0%, IBUs: 80")
        
        arrayOfBeers.append(beer1)
        arrayOfBeers.append(beer2)
        arrayOfBeers.append(beer3)
        arrayOfBeers.append(beer4)
        arrayOfBeers.append(beer5)
        arrayOfBeers.append(beer6)
        arrayOfBeers.append(beer7)
        arrayOfBeers.append(beer8)
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "customBeerCell", for: indexPath) as? BeerCellVCTableViewCell {
            
            let individualBeer = arrayOfBeers[indexPath.row]
            cell.updateUI(individualBeer: individualBeer)
            return cell
            
        } else {
            
            return UITableViewCell()
            
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfBeers.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let individualBeer = arrayOfBeers[indexPath.row]
        performSegue(withIdentifier: "Beer DetailsVC", sender: individualBeer)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? BeerDetailsVC {
            if let cellInforamtion = sender as? Beer {
                destination.beerDetails = cellInforamtion
            }
        }
    }
}

