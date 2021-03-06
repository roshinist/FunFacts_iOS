//
//  ViewController.swift
//  FunFacts
//
//  Created by Roshini Thiagarajan on 10/26/16.
//  Copyright © 2016 Roshini Thiagarajan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    /* Member variables */
    let factBook = FactBook()
    let colorWheel = ColorWheel();
    
    /* UI componenets */
    @IBOutlet weak var funfactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funfactLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        funfactLabel.text = factBook.randomFact()
        let randomColor = colorWheel.randomColor()
        view.backgroundColor = randomColor;
        funFactButton.tintColor = randomColor;
    }

}


