//
//  DetailedViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Manny Yusuf on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {

    var crayons: Crayon!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaLabel: UILabel!
    @IBOutlet weak var alphaStepper: UIStepper!
    @IBOutlet weak var resetButton: UIButton!
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
            view.backgroundColor = UIColor.init(displayP3Red: CGFloat(crayons.red / 255), green: CGFloat(crayons.green / 255), blue: CGFloat(crayons.blue / 255), alpha: 1)
            
            
        redLabel.text = "Red"
        redSlider.value = 0
        redSlider.minimumValue = 0.0
        redSlider.maximumValue = 255.0
            
            
        greenLabel.text = "Green"
        greenSlider.value = 0
        greenSlider.minimumValue = 0.0
        greenSlider.maximumValue = 255.0
            
        blueLabel.text = "Blue"
        blueSlider.value = 0
        blueSlider.maximumValue = 0.0
        blueSlider.maximumValue = 255.0
            
        alphaLabel.text = "Alpha"
        alphaStepper.value = 1.0
        alphaStepper.minimumValue = 0.0
        alphaStepper.maximumValue = 1.0
        alphaStepper.stepValue = 0.1
        
    }
    @IBAction func redSliderChanged(_ sender: UISlider) {
        redLabel.text = Double(sender.value).description
        self.view.backgroundColor = UIColor.init(displayP3Red: CGFloat(redSlider.value / 255), green: CGFloat(greenSlider.value / 255), blue: CGFloat(blueSlider.value / 255), alpha: 1)
    }
    @IBAction func greenSliderChanged(_ sender: UISlider) {
        greenLabel.text = Double(sender.value).description
        self.view.backgroundColor = UIColor.init(displayP3Red: CGFloat(redSlider.value / 255), green: CGFloat(greenSlider.value / 255), blue: CGFloat(blueSlider.value / 255), alpha: 1)
    }
    @IBAction func blueSliderChanged(_ sender: UISlider) {
        blueLabel.text = Double(sender.value).description
       self.view.backgroundColor = UIColor.init(displayP3Red: CGFloat(redSlider.value / 255), green: CGFloat(greenSlider.value / 255), blue: CGFloat(blueSlider.value / 255), alpha: 1)
    }
    @IBAction func alphaStepperChanged(_ sender: UIStepper) {
        alphaLabel.text = Double(sender.value).description
        self.view.backgroundColor = UIColor.init(displayP3Red: CGFloat(redSlider.value / 255), green: CGFloat(greenSlider.value / 255), blue: CGFloat(blueSlider.value / 255), alpha: 1)
    }
    @IBAction func resetButton(_ sender: UIButton) {
        self.view.backgroundColor = UIColor.init(displayP3Red: CGFloat(crayons.red / 255), green: CGFloat(crayons.green / 255), blue: CGFloat(crayons.blue / 255), alpha: 1)
    }
}


