//
//  PopularMoviewResponseEntity.swift
//  TestVIPER
//
//  Created by Power Talent on 16/05/23.
//

import Foundation

struct PopularMovieReponseEntity : Decodable{
    
    let results: [PopularMovieEntity]
}
