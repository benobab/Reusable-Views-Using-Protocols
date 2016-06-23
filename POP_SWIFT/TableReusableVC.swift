//
//  TableReusableVC.swift
//  POP_SWIFT
//
//  Created by Benobab on 23/06/16.
//  Copyright © 2016 Benobab. All rights reserved.
//

import UIKit

class TableReusableVC: UIViewController {

    //MARK:Outlets from view
    
    @IBOutlet weak var tableView: UITableView!
    
    //MARK:Variables
    var items:Array<String> = ["item 1","item 2","item 3"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TestCell)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//MARK: TableView Management
extension TableReusableVC:UITableViewDelegate,UITableViewDataSource{
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //TODO
        let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as TestCell
        cell.item = items[indexPath.row]
        return cell
    }
}
