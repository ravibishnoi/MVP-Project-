//
//  ViewController.swift
//  MvpProject
//
//  Created by AshutoshD on 13/04/20.
//  Copyright © 2020 ravindraB. All rights reserved.
//

import UIKit

class TrafficLightVC: UIViewController, TrafficLightViewDelegate {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    private let trafficLightPresenter = TrafficLightPresenter(trafficLightService: TrafficLightService())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trafficLightPresenter.setViewDelegate(trafficLightViewDelegate: self)
    }
    
    @IBAction func redLightAction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName:"Red")
    }
    
    @IBAction func yellowLightAction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName:"Yellow")
    }
    
    @IBAction func greenLightAction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName:"Green")
    }
    
    func displayTrafficLight(description:(String)) {
        descriptionLabel.text = description
    }
}
