//
//  TestCell.swift
//  POP_SWIFT
//
//  Created by Benobab on 23/06/16.
//  Copyright © 2016 Benobab. All rights reserved.
//

import UIKit

class TestCell: UITableViewCell {

    //MARK:Outlets from view
    
    @IBOutlet weak var titleLabel: UILabel!

    //MARK:Variables
    var item:String? = nil{
        didSet{
            updateView()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateView(){
        self.titleLabel.text = item
    }

}

//MARK: extensions

extension TestCell:NibLoadableView { }