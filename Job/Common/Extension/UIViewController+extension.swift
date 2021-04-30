//
//  UIViewController+extension.swift
//  Job
//
//  Created by SENGHORT on 4/30/21.
//

import SwiftUI

extension UIViewController {
    var rootParent: UIViewController {
        if let parent = self.parent {
            return parent.rootParent
        }
        else {
            return self
        }
    }
}
