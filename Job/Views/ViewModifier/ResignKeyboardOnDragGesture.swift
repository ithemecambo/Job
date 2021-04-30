//
//  ResignKeyboardOnDragGesture.swift
//  Job
//
//  Created by SENGHORT on 4/30/21.
//

import SwiftUI

struct ResignKeyboardOnDragGesture: ViewModifier {
    var gesture = DragGesture().onChanged{_ in
        UIApplication.shared.endEditing(true)
    }
    
    func body(content: Content) -> some View {
        content.gesture(gesture)
    }
}
