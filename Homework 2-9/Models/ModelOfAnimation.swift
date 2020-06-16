//
//  ModelOfAnimation.swift
//  Homework 2-9
//
//  Created by Станислав Климов on 16.06.2020.
//  Copyright © 2020 Stanislav Klimov. All rights reserved.
//

import Foundation

struct Animation {
    let animationName: String
    let animationCurve: String
    let delay: Float
    let force: Float
    let duration: Float
    let velocity: Float
}

extension Animation {
    static func returnData() -> [Animation] {
        var animations: [Animation] = []
        
        let names = DataManager.shared.names.shuffled()
        let curves = DataManager.shared.curves.shuffled()
        let delayValues = DataManager.shared.delayValues.shuffled()
        let forceValues = DataManager.shared.forceValues.shuffled()
        let durationValues = DataManager.shared.durationValues.shuffled()
        let velocityValues = DataManager.shared.velocityValues.shuffled()
        
        for index in 0..<names.count {
            let animation = Animation(
                animationName: names[index],
                animationCurve: curves[index],
                delay: Float(delayValues[index]),
                force: Float(forceValues[index]),
                duration: Float(durationValues[index]),
                velocity: Float(velocityValues[index])
                
            )
            animations.append(animation)
        }
            return animations
        }
}
