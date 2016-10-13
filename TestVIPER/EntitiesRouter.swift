//
//  Router.swift
//  TestVIPER
//
//  Created by Maxim Tischenko on 13.10.16.
//  Copyright © 2016 Maxim Tischenko. All rights reserved.
//

import UIKit

class EntitiesRouter: MainRouter, EntitiesRouterInput {
    
    func presentInitialVC() {
        
        let view = EntitiesViewController(nibName: "EntitiesViewController", bundle: nil)
        let presenter = EntitiesPresenter()
        let interactor = EntitiesInteractor()
        
        view.presenter = presenter
        presenter.view = view
        
        presenter.interactor = interactor
        interactor.output = presenter
        
        presenter.router = self

        self.navigationController.pushViewController(view, animated: true)
    }
    
    func presentEntityDetails(entity: Entity) {
        let entityDetailsRouter = EntityDetailsRouter()
        entityDetailsRouter.navigationController = self.navigationController
        entityDetailsRouter.showEntityDetails(entity: entity)
    }
}
