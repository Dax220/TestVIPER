//
//  EntityDetails.swift
//  TestVIPER
//
//  Created by Maxim Tischenko on 13.10.16.
//  Copyright © 2016 Maxim Tischenko. All rights reserved.
//

import UIKit

class EntityDetailsVC: UIViewController, EntityDetailsPresenterOutput {

    @IBOutlet var entityTitle: UILabel!
    @IBOutlet var entityDescription: UILabel!
    
    var presenter: EntityDetailsPresenterInput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.showEntityDetails()
    }

    //MARK: - EntityDetailsPresenterOutput
    func updateView(entity : Entity) {
        entityTitle.text = entity.entityTitle
        entityDescription.text = entity.entityDescription
    }
}
