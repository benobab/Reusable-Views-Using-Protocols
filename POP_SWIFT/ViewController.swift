//
//  ViewController.swift
//  POP_SWIFT
//
//  Created by Benobab on 22/06/16.
//  Copyright © 2016 Benobab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK:Outlets from view
    
    @IBOutlet weak var goTableButton: ButtonShakeable!
    @IBOutlet weak var shabeableButton: ButtonShakeable!
    //MARK:Variables
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:Actions From View
    
    @IBAction func goTableButtonClicked(sender: ButtonShakeable) {
        sender.shake()
        let destVC = storyboard?.instantiateViewControllerWithIdentifier("tableVC") as! TableReusableVC
        self.navigationController?.pushViewController(destVC, animated: true)
    }
    
    @IBAction func shakeableButtonClicked(sender: ButtonShakeable) {
        sender.shake()
    }
}

