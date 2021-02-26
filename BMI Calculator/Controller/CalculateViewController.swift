//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Dahou Meziane on 12/25/20.
//  Copyright © 2020 Meziane Dahou. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightProgress: UISlider!
    @IBOutlet weak var weightProgress: UISlider!
    @IBOutlet weak var heightText: UILabel!
    @IBOutlet weak var weightText: UILabel!
    var bmiValue = "0.0"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightChanged(_ sender: UISlider) {
        heightText.text = String(format: "%.2f" ,sender.value)+"m"
    }
    
    @IBAction func weightChanged(_ sender: UISlider) {
        weightText.text = String(Int(sender.value))+"kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightProgress.value
        let weight = weightProgress.value
        bmiValue = String(format: "%.2f", weight/pow(height, 2))
        print (bmiValue)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVc = segue.destination as! ResultViewController
            // we always need to set the destination uicontroller
            // Downcasting
            destinationVc.bmiValue = bmiValue
        }
    }
}

