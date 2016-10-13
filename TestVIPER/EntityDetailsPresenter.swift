//
//  EntityDetailsPresenter.swift
//  TestVIPER
//
//  Created by Maxim Tischenko on 13.10.16.
//  Copyright © 2016 Maxim Tischenko. All rights reserved.
//

import UIKit

class EntityDetailsPresenter: NSObject, EntityDetailsPresenterInput {
    
    var router: EntityDetailsRouterInput!
    var entity: Entity!
    var view: EntityDetailsPresenterOutput!
    
    func showEntityDetails() {
        view.updateView(entity: self.entity)
    }
}
