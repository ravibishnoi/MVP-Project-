//
//  TrafficLightPresenter.swift
//  MvpProject
//
//  Created by AshutoshD on 13/04/20.
//  Copyright © 2020 ravindraB. All rights reserved.
//

import UIKit
import Foundation


protocol TrafficLightViewDelegate: NSObjectProtocol {
    func displayTrafficLight(description:(String))
}

class TrafficLightPresenter {
    
    private let trafficLightService:TrafficLightService
    weak private var trafficLightViewDelegate : TrafficLightViewDelegate?
    
    init(trafficLightService:TrafficLightService){
        self.trafficLightService = trafficLightService
    }
    
    func setViewDelegate(trafficLightViewDelegate:TrafficLightViewDelegate?){
        self.trafficLightViewDelegate = trafficLightViewDelegate
    }
    
    func trafficLightColorSelected(colorName:(String)){
        
        trafficLightService.getTrafficLight(colorName: colorName) { [weak self] traficLight in
            
            if let traficLight = traficLight {
                self?.trafficLightViewDelegate?.displayTrafficLight(description: traficLight.description!)
            }
        }
    }

}
