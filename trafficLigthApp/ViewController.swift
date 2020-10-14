//
//  ViewController.swift
//  trafficLigthApp
//
//  Created by Alex on 14.10.2020.
//

import UIKit

enum DisplayLight {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var buttonStart: UIButton!
    
    private var displayLight = DisplayLight.red
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonStart.layer.cornerRadius = 10
        
        redLight.alpha = lightOff
        yellowLight.alpha = lightOff
        greenLight.alpha = lightOff
    }
    
    @IBAction func toggleLightButtonPresed() {
        buttonStart.setTitle("NEXT", for:.normal)
        
        switch displayLight {
        case .red:
            greenLight.alpha = lightOff
            redLight.alpha = lightOn
            displayLight = .yellow
        case .yellow:
            redLight.alpha = lightOff
            yellowLight.alpha = lightOn
            displayLight = .green
        case .green:
            yellowLight.alpha = lightOff
            greenLight.alpha = lightOn
            displayLight = .red
        }
    }
    
}

