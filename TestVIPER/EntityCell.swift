//
//  EntityCellTableViewCell.swift
//  TestVIPER
//
//  Created by Maxim Tischenko on 13.10.16.
//  Copyright © 2016 Maxim Tischenko. All rights reserved.
//

import UIKit

class EntityCell: UITableViewCell {

    func setupWithEntity(entity: Entity) {
        textLabel?.text = entity.entityTitle;
    }
}
