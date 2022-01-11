//
//  ViewController.swift
//  SlideColors
//
//  Created by Andrew Bondarenko on 10.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 10
        
        redLabel.text = String(redSlider.value)
        blueLabel.text = String(blueSlider.value)
        greenLabel.text = String(greenSlider.value)
    }
    
    func paintView() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value),
                                            alpha: 1)
    }
    
    @IBAction func paintViewInRed() {
        redLabel.text = String(round(redSlider.value * 100) / 100)
        paintView()
    }
    
    @IBAction func paintViewInBlue() {
        blueLabel.text = String(round(blueSlider.value * 100) / 100)
        paintView()
    }
    
    @IBAction func paintViewInGreen() {
        greenLabel.text = String(round(greenSlider.value * 100) / 100)
        paintView()
    }
}

