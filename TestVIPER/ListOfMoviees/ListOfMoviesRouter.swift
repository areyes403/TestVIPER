//
//  ListOfMoviesRouter.swift
//  TestVIPER
//
//  Created by Power Talent on 16/05/23.
//

import Foundation
import UIKit

class ListOfMoviesRouter{
    
    func showListOfMovies(window: UIWindow?){
        let interactor = ListOfMoviesInteractor()
        let presenter = ListOfMoviesPresenter(listOfMoviesInteractor: interactor)
        
        
        let view = ListOfMoviesView(presenter : presenter)
        presenter.ui=view
        //view.presenter=presenter
        
        window?.rootViewController=view
        window?.makeKeyAndVisible()
        
        
        
    }
}
