//
//  ListOfMoviesPresenter.swift
//  TestVIPER
//
//  Created by Power Talent on 16/05/23.
//

import Foundation

protocol ListOfMoviesPresentable: AnyObject{
    var ui:ListOfMoviesUI? {get}
    var viewModels: [ViewModel]{get}
    func onViewAppear()
}

protocol ListOfMoviesUI: AnyObject {
    func update(movies: [ViewModel])
}


class ListOfMoviesPresenter: ListOfMoviesPresentable{
    
    weak var ui: ListOfMoviesUI?
    
    private let listOfMoviesInteractor: ListOfMoviesInteractable
    var viewModels: [ViewModel] = []
    private let mapper: Mapper
    
    init(listOfMoviesInteractor: ListOfMoviesInteractable, mapper: Mapper = Mapper()){
        self.listOfMoviesInteractor = listOfMoviesInteractor
        self.mapper = mapper
    }
    
    func onViewAppear(){
        Task{
            let models = await listOfMoviesInteractor.getListOfMovies().results
            viewModels = models.map(mapper.map(entity:))
            ui?.update(movies: viewModels)
        }
    }
    
}
