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
        print (String(weight/pow(height, 2)))
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
}

