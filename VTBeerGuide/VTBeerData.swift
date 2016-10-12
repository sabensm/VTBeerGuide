//
//  VTBeerData.swift
//  VTBeerGuide
//
//  Created by Sabens, Michael G. on 10/11/16.
//  Copyright © 2016 Sabens, Michael G. All rights reserved.
//

import Foundation

class Beer {
    
    private var _beerName: String!
    private var _beerType: String!
    private var _beerRating: String!
    private var _beerImage: String!
    private var _beerDescription: String!
    
    //here we create the getters
    
    var beerName: String {
        return _beerName
    }
    
    var beerType: String {
        return _beerType
    }
    
    var beerRating: String {
        return _beerRating
    }
    
    var beerImage: String {
        return _beerImage
    }
    
    var beerDescription: String {
        return _beerDescription
    }
    
    //now we initialize so that we can create objects using this class structure and add them to an array
    
    init(beerName: String, beerType: String, beerRaiting: String, beerImage: String, beerDescription: String) {
        
        _beerName = beerName
        _beerType = beerType
        _beerRating = beerRaiting
        _beerImage = beerImage
        _beerDescription = beerDescription
        
    }
    
    
    
}
