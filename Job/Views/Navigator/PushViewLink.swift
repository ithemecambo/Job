//
//  PushViewLink.swift
//  Job
//
//  Created by SENGHORT on 4/30/21.
//

import SwiftUI

public struct PushViewLink<Destination: View>: View {
    @Binding private var isActive: Bool
    private let destination: () -> Destination
    
    public init(isActive: Binding<Bool>, destination: @escaping () -> Destination) {
        self._isActive = isActive
        self.destination = destination
    }
    
    public var body: some View {
        NavigationLink(destination: destination(), isActive: $isActive) {
            EmptyView()
        }.isDetailLink(false)
    }
}
