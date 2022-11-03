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
    private let currentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: Private funcs
    private func setupUI() {
        redLight.backgroundColor = .red
        yellowLight.backgroundColor = .yellow
        greenLight.backgroundColor = .green
        redLight.layer.cornerRadius = 75
        greenLight.layer.cornerRadius = 75
        yellowLight.layer.cornerRadius = 75
        
        view.backgroundColor = .black
        
        changeButton.setTitle("START", for: .normal)
        changeButton.backgroundColor = .cyan
        changeButton.tintColor = .purple
        changeButton.layer.cornerRadius = 15
    }

}

