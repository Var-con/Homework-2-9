//
//  ViewController.swift
//  Homework 2-9
//
//  Created by Станислав Климов on 16.06.2020.
//  Copyright © 2020 Stanislav Klimov. All rights reserved.
//

import Spring

class ViewController: UIViewController {
    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationNameLabel: UILabel!
    @IBOutlet var animationCurveLabel: UILabel!
    @IBOutlet var animationForceLabel: UILabel!
    @IBOutlet var animationDelayLabel: UILabel!
    @IBOutlet var animationDurationLabel: UILabel!
    @IBOutlet var animationVelocityLabel: UILabel!
    @IBOutlet var actionButtonOutlet: SpringButton!
    
    var animations = Animation.returnData()
    var currentAnimationIndex = 0
    
    @IBAction func startButton(_ sender: SpringButton) {
        if currentAnimationIndex != animations.endIndex {
            animationStart()
            settingLabels()
            setingButtonName()
        } else {
            currentAnimationIndex = 0
            animationStart()
            settingLabels()
        }
    }
}

extension ViewController {
    private func animationStart() {
        let currentAnimation = animations[currentAnimationIndex]
        animationView.animation = currentAnimation.animationName
        animationView.curve = currentAnimation.animationCurve
        animationView.duration = CGFloat(currentAnimation.duration)
        animationView.delay = CGFloat(currentAnimation.delay)
        currentAnimationIndex += 1
        animationView.animate()
        
    }
    
    func setingButtonName() {
        if currentAnimationIndex != animations.endIndex {
            actionButtonOutlet.setTitle(
                animations[currentAnimationIndex].animationName,
                for: .normal
            )
        } else {
            currentAnimationIndex = 0
            actionButtonOutlet.setTitle(
                animations[currentAnimationIndex].animationName,
                for: .normal
            )
        }
    }
}

extension ViewController {
    private func settingLabels() {
        animationNameLabel.text = "Name: \(animationView.animation)"
        animationCurveLabel.text = "Curve: \(animationView.curve)"
        animationDelayLabel.text = "Delay: \(String(format: "%.2f",animationView.delay))"
        animationForceLabel.text = "Force: \(String(format: "%.2f",animationView.force))"
        animationDurationLabel.text = "Duration: \(String(format: "%.2f",animationView.duration))"
        animationVelocityLabel.text = "Velocity: \(String(format: "%.2f",animationView.velocity))"
    }
}

extension CGFloat: LosslessStringConvertible {
    public init?(_ description: String) {
        self.init()
    }
}

