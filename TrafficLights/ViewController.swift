//
//  ViewController.swift
//  TrafficLights
//
//  Created by Сергей Подолякин on 3/11/22.
//

import UIKit
enum CurrentLight {
    case red
    case yellow
    case green
}
class ViewController: UIViewController {
    // MARK: IBOutlets
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var changeButton: UIButton!
    
    // MARK: Private properties
    private var currentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    
    @IBAction func changeButtonPressed(_ sender: UIButton) {
        if changeButton.currentTitle == "START" {
            changeButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            redLight.alpha = lightIsOn
            greenLight.alpha = lightIsOff
            currentLight = .yellow
        case .yellow:
            yellowLight.alpha = lightIsOn
            redLight.alpha = lightIsOff
            currentLight = .green
        case .green:
            greenLight.alpha = lightIsOn
            yellowLight.alpha = lightIsOff
            currentLight = .red
        }
    }
    
    // MARK: Private funcs
    private func setupUI() {
        redLight.backgroundColor = .red
        yellowLight.backgroundColor = .yellow
        greenLight.backgroundColor = .green
        redLight.layer.cornerRadius = 75
        greenLight.layer.cornerRadius = 75
        yellowLight.layer.cornerRadius = 75
        
        redLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        
        view.backgroundColor = .black
        
        changeButton.setTitle("START", for: .normal)
        changeButton.backgroundColor = .cyan
        changeButton.tintColor = .purple
        changeButton.layer.cornerRadius = 15
    }

}

