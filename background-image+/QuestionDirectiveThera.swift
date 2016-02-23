//
//  ViewController.swift
//  background-image+
//
//  Created by Sadir Abdulhadi on 2/4/16.
//  Copyright (c) 2016 UCL. All rights reserved.
//

import UIKit

class QuestionDirectiveThera: UIViewController {
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var slider: UISlider!
    

    @IBAction func sliderChange(sender: UISlider) {
        let sliderValue = Int(round(sender.value))
        score.text = "\(sliderValue)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
}

