//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Sena Küçükerdoğan on 30.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    var isChicagoEvening = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changePic(){
        if isChicagoEvening == false {
            imageView.image = UIImage(named: "chicago3")
            myLabel.text = "Evening in Chicago"
            isChicagoEvening = true
        }
        else{
            imageView.image = UIImage(named: "chicago2")
            myLabel.text = "Afternoon in Chicago"
            isChicagoEvening = false
        }
        
    }

}

