//
//  ViewController.swift
//  TestVIPER
//
//  Created by Maxim Tischenko on 13.10.16.
//  Copyright © 2016 Maxim Tischenko. All rights reserved.
//

import UIKit

class EntitiesViewController: UIViewController, EntitiesPresenterOutput, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    var presenter: EntitiesPresenterInput!
    
    var entities: [Entity]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.showFakeEntities()
        tableView.register(EntityCell.self, forCellReuseIdentifier: "myCell")
    }
    
    //MARK: - Presenter output
    func displayEntities(entities: [Entity]) {
        self.entities = entities
        tableView.reloadData()
    }
    
    //MARK: - UITableView Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return entities == nil ? 0 : entities!.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! EntityCell
        cell.setupWithEntity(entity: entities![indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.showEntityDetails(entity: entities![indexPath.row])
    }
}

