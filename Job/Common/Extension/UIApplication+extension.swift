//
//  UIApplication+extension.swift
//  Job
//
//  Created by SENGHORT on 4/30/21.
//

import SwiftUI

extension UIApplication {
    func endEditing(_ force: Bool) {
        self.windows
            .filter{$0.isKeyWindow}
            .first?
            .endEditing(force)
    }
}
