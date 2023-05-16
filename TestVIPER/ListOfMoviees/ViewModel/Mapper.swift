//
//  Mapper.swift
//  TestVIPER
//
//  Created by Power Talent on 16/05/23.
//

import Foundation

struct Mapper{
    func map(entity: PopularMovieEntity) -> ViewModel{
        ViewModel(title: entity.title,
                  overview: entity.overview,
                  imageURL: URL(string: "https://image.tmdb.org/t/p/w200" + entity.imageURL))
    }
}
