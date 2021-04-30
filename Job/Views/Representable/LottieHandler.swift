//
//  LottieHandler.swift
//  Job
//
//  Created by SENGHORT on 4/30/21.
//

import SwiftUI
import Lottie

struct LottieHandler: UIViewRepresentable {
    
    let animationView = AnimationView()
    let fileName: String
    var loopMode: LottieLoopMode = .playOnce
    var duration: CGFloat = 2.5

    func makeUIView(context: UIViewRepresentableContext<LottieHandler>) -> UIView {
        let animation = Animation.named(fileName)
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = loopMode
        animationView.animationSpeed = duration
        animationView.play()
        animationView.translatesAutoresizingMaskIntoConstraints = false

        let view = UIView()
        view.addSubview(animationView)
        [animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
         animationView.widthAnchor.constraint(equalTo: view.widthAnchor)].forEach {
            $0.isActive = true
        }
        return view
    }

    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LottieHandler>) {

    }
}
