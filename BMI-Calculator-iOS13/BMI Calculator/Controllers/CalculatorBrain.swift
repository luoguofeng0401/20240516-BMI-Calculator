//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Guo-Feng Luo on 2024/5/16.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    
    
    
    mutating func calcultorBMI(height: Float, weight: Float) {
        let bmiValue = weight / ( height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, dvice: "Eat more pies!", color: UIColor.blue)
        } else if bmiValue < 24.5 {
            bmi = BMI(value: bmiValue, dvice: "Fit as a fiddle!", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, dvice: "Eat less pies", color: UIColor.red)
        }
        
    }
    
    func getBMIValue() -> String{
        let bmiTo1DecimalPlace = String(format: "%1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.dvice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
