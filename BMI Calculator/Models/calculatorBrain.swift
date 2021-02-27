//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Dahou Meziane on 26/2/2021.
//  Copyright © 2021 Meziane Dahou. All rights reserved.
//

import UIKit

struct calculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String {
        return String(format :"%.2f", bmi?.value ?? 0.0) // test if it's nil than give it a default value
    }
    
    func getBMIAdvice() -> String {
        return bmi?.advice ?? ""
        
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float)  {
        let bmiValue = weight/pow(height, 2)
       
        if bmiValue < 18.5 {
            
            bmi = BMI(value: bmiValue, advice: "Eat more pies !", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
            
        }else if bmiValue < 24.9 {
            
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))

        }else {
            
            bmi = BMI(value: bmiValue, advice: "Eat less pies !", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))

        }
        
    }
    
    
}
