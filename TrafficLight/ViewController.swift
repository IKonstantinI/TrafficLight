//
//  ViewController.swift
//  TrafficLight
//
//  Created by horze on 11.11.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var trafficLightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = 64
        yellowLightView.layer.cornerRadius = 64
        greenLightView.layer.cornerRadius = 64
        
        trafficLightButton.layer.cornerRadius = 10
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
    }
    
    enum TrafficLightStatus {
        case off, green, yellow, red
    }
    
    var currentTrafficLightStatus: TrafficLightStatus = .off
    
    @IBAction func trafficLightButtonDidTapped(_ sender: UIButton) {
        switch currentTrafficLightStatus {
        case .off:
            redLightView.alpha = 1
            currentTrafficLightStatus = .red
            trafficLightButton.setTitle("NEXT", for: .normal)
        case .red:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            currentTrafficLightStatus = .yellow
        case .yellow:
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            currentTrafficLightStatus = .green
        case .green:
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
            currentTrafficLightStatus = .red
        }
    }
}

