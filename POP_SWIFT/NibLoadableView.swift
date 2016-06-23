//
//  NibLoadableView.swift
//  POP_SWIFT
//
//  Created by Benobab on 23/06/16.
//  Copyright © 2016 Benobab. All rights reserved.
//

import UIKit

protocol NibLoadableView { }

extension NibLoadableView where Self: UIView {
    static var NibName:String {
        return String(self)
    }
}