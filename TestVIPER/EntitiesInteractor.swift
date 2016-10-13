//
//  Interactor.swift
//  TestVIPER
//
//  Created by Maxim Tischenko on 13.10.16.
//  Copyright © 2016 Maxim Tischenko. All rights reserved.
//

import UIKit

class EntitiesInteractor: NSObject, EntitiesInteractorInput {
    
    var output: EntitiesInteractorOutput!
    
    internal func fetchFakeEntities() {
        
        var entities:[Entity] = []
        
        for i in 1...20 {
            let entity = Entity()
            entity.entityTitle = "Title \(i)"
            entity.entityDescription = "Some description Some description Some description Some description Some description Some description Some description"
            entities.append(entity)
        }
        
        output.fakeEntitiesReceived(fakeEntities: entities)
    }
    
}
