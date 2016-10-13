//
//  EntityDetailsRouter.swift
//  TestVIPER
//
//  Created by Maxim Tischenko on 13.10.16.
//  Copyright © 2016 Maxim Tischenko. All rights reserved.
//

import UIKit

class EntityDetailsRouter: MainRouter, EntityDetailsRouterInput {
    
    func showEntityDetails(entity: Entity) {
        
        let view = EntityDetailsVC(nibName:"EntityDetailsVC", bundle: nil)
        let presenter = EntityDetailsPresenter()
        
        presenter.entity = entity
        presenter.view = view
        view.presenter = presenter
        
        self.navigationController.pushViewController(view, animated: true)
    }
}
