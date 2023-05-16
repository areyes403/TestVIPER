//
//  SceneDelegate.swift
//  TestVIPER
//
//  Created by Power Talent on 16/05/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var listOfMoviesRouter=ListOfMoviesRouter()


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        listOfMoviesRouter.showListOfMovies(window: window)
    }

    
 

}

