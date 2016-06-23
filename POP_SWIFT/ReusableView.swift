//
//  ReusableView.swift
//  POP_SWIFT
//
//  Created by Benobab on 23/06/16.
//  Copyright © 2016 Benobab. All rights reserved.
//

import UIKit

protocol ReusableView { }

extension ReusableView where Self:UIView {
    static var reuseIdentifier:String {
        return String(self)
    }
}

extension UITableViewCell : ReusableView { }

extension UITableView {
    
    func register<T: UITableViewCell where T: ReusableView, T: NibLoadableView>(_: T.Type) {
        
        let Nib = UINib(nibName: T.NibName, bundle: nil)
        registerNib(Nib, forCellReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueReusableCell<T: UITableViewCell where T: ReusableView>(forIndexPath indexPath: NSIndexPath) -> T {
        guard let cell = dequeueReusableCellWithIdentifier(T.reuseIdentifier, forIndexPath: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        return cell
    }
}

