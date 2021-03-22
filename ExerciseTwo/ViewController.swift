//
//  ViewController.swift
//  ExerciseTwo
//
//  Created by admin on 22.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var startButton: UIButton!
    @IBOutlet var trafficLightRed: UIView!
    @IBOutlet var trafficLightYellow: UIView!
    @IBOutlet var trafficLightGreen: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trafficLightRed.alpha = 0.3
        trafficLightYellow.alpha = 0.3
        trafficLightGreen.alpha = 0.3
        trafficLightRed.layer.cornerRadius = 40
        trafficLightYellow.layer.cornerRadius = 40
        trafficLightGreen.layer.cornerRadius = 40
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed() {
        if trafficLightRed.alpha < 1 &&
           trafficLightYellow.alpha < 1 &&
           trafficLightGreen.alpha < 1 {
            trafficLightRed.alpha = 1
            startButton.setTitle("NEXT", for: .normal)
        } else if trafficLightRed.alpha == 1 {
            trafficLightRed.alpha = 0.3
            trafficLightYellow.alpha = 1
        } else if trafficLightYellow.alpha == 1{
            trafficLightYellow.alpha = 0.3
            trafficLightGreen.alpha = 1
        } else if trafficLightGreen.alpha == 1 {
            trafficLightGreen.alpha = 0.3
            startButton.setTitle("START", for: .normal)
        }
    }
    
}

