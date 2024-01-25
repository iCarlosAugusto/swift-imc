//
//  ViewController.swift
//  imc-app
//
//  Created by Carlos on 24/01/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tfWeight: UITextField!
    @IBOutlet weak var tfHeight: UITextField!
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var imgResult: UIImageView!
    var imc: Double = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func calculate(_ sender: Any) {
        if let weight = Double(tfWeight.text!), let height = Double(tfHeight.text!) {
            imc = weight / (height * height);
            showResults();
        };
    }
    
    func showResults() {
        var text: String = "";
        var image: String = "";
        print("Imc: ", imc);
        switch imc {
            case 0..<16:
                text = "Magreza"
                image = "abaixo"
            case 16..<18.5:
                text = "Abaixo do peso"
                image = "abaixo"
            case 18.5..<25:
                text = "Peso ideal"
                image = "ideal"
            case 25..<30:
                text = "Sobrepeso"
                image = "sobre"
            default:
                text = "Obesidade"
                image = "obesidade"
        }
        lbResult.text = text;
        imgResult.image = UIImage(named: image)
    }
}

