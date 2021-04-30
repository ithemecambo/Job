//
//  View+extension.swift
//  Job
//
//  Created by SENGHORT on 4/29/21.
//

import SwiftUI

extension View {
    
    func navigationBarColor(_ backgroundColor: Color?) -> some View {
        self.modifier(NavigationBarModifier(backgroundColor: backgroundColor))
    }
    
    func resignKeyboardOnDragGesture() -> some View {
        return modifier(ResignKeyboardOnDragGesture())
    }
    
    public func disableSwipeToDismiss() -> some View {
        self.background(SwipeToDismissView(dismissable: { false }))
    }
    
    public func allowsSwipeToDismiss(_ dismissable: Bool) -> some View {
        self.background(SwipeToDismissView(dismissable: { dismissable }))
    }
}
