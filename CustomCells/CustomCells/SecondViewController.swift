//
//  SecondViewController.swift
//  CustomCells
//
//  Created by User on 07.11.2024.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var Imgview: UIImageView!
    @IBOutlet weak var Details: UITextView!
    var img = UIImage()
    var det = ""
    
    override func viewDidLoad() {
        Details.text = det
        Imgview.image = img
    }
    
}
	
