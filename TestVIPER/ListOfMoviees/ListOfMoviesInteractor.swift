//
//  ListOfMoviesInteractor.swift
//  TestVIPER
//
//  Created by Power Talent on 16/05/23.
//

import Foundation

//  eb49209fa85af56ad2109927a43a575c

protocol ListOfMoviesInteractable: AnyObject{
    func getListOfMovies() async -> PopularMovieReponseEntity
}


class ListOfMoviesInteractor: ListOfMoviesInteractable{
    func getListOfMovies() async-> PopularMovieReponseEntity{
        let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=eb49209fa85af56ad2109927a43a575c")!
        let (data,_) = try! await URLSession.shared.data(from:url)
        return try! JSONDecoder().decode(PopularMovieReponseEntity.self, from: data)
    }
}

class ListOfMoviewsInteractorMock: ListOfMoviesInteractable{
    func getListOfMovies() async -> PopularMovieReponseEntity {
        return PopularMovieReponseEntity(results:[
            .init(id: 0, title: "Hola", overview: "que", imageURL: "hace", votes: 10),
            .init(id: 0, title: "Hola2", overview: "que", imageURL: "hace", votes: 10),
            .init(id: 0, title: "Hola3", overview: "que", imageURL: "hace", votes: 10)
        
        ])
    }
    
    
}
