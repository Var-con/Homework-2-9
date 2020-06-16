//
//  DataManager.swift
//  Homework 2-9
//
//  Created by Станислав Климов on 16.06.2020.
//  Copyright © 2020 Stanislav Klimov. All rights reserved.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    private init() {}
    
    let names = [
        "slideLeft", "wobble", "squeezeLeft",
        "fadeIn", "zoomIn", "shake",
        "pop", "morph", "squeeze"
    ]
    
    let curves = [
        "easeInSine", "easeInOutCubic", "easeInQuint",
        "easeOutExpo", "easeInOutCirc", "easeInOutBack",
        "spring", "linear", "easeOut"
    ]
    
    let  delayValues =  [
        1.5, 1.25, 1.0,
        0.8, 0.2, 0.4,
        0.5, 0.3, 0.2
    ]
    
    
    let forceValues = [
        2.75, 2.25, 1.25,
        0.75, 2.5, 1.5,
        3.0, 2.0, 1.0
    ]
    
    let durationValues = [
        1.0, 2.0, 3.0,
        1.5, 2.5, 1.25,
        2.0, 1.5, 2.5
    ]
    
    let velocityValues = [
        0.2, 0.1, 0.4,
        0.2, 0.3, 0.1,
        0.4, 0.5, 0.2
    ]
}
