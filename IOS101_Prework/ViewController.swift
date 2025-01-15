//
//  ViewController.swift
//  IOS101_Prework
//
//  Created by Mia Pham on 1/15/25.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Helper function to generate random colors
    func generateRandomColor(alpha: CGFloat) -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    // Outlets for labels
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    // Action to change background color
   @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let backgroundColor = generateRandomColor(alpha: 0.5)
        view.backgroundColor = backgroundColor
    }
    
    // Action to change text color
    @IBAction func changeTextColor(_ sender: UIButton) {
     // Generate unique random colors for text
        let textColor1 = generateRandomColor(alpha: 1.0)
        let textColor2 = generateRandomColor(alpha: 1.0)
        let textColor3 = generateRandomColor(alpha: 1.0)
        
        // Set random colors for each label's text
        label1.textColor = textColor1
        label2.textColor = textColor2
        label3.textColor = textColor3
    }
}
