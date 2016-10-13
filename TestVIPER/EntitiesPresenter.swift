//
//  Presenter.swift
//  TestVIPER
//
//  Created by Maxim Tischenko on 13.10.16.
//  Copyright © 2016 Maxim Tischenko. All rights reserved.
//

import UIKit

class Presenter: NSObject, EntitiesInteractorOutput , PresenterInput {

    var view: PresenterOutput!
    var interactor: EntitiesInteractorInput!
    var router: RouterInput!

    override init() {
        interactor = EntitiesInteractor()
    }
    
    func showFakeEntities() {
        interactor.fetchFakeEntities()
    }
    
    //MARK: - Interactor output
    func fakeEntitiesReceived(fakeEntities: [Entity]) {
        view.displayEntities(entities: fakeEntities)
    }
    
}
