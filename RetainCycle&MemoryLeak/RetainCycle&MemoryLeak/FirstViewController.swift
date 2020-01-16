//
//  ViewController.swift
//  RetainCycle&MemoryLeak
//
//  Created by Neal on 2020/1/16.
//  Copyright © 2020 neal812220. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var secondVC: SecondViewController?
    
    @IBOutlet weak var firstTextField: UITextField!
    
//    override func viewWillAppear(_ animated: Bool) {
//
//        secondVC = nil
//    }
    @IBAction func toSecondVC() {
        
       secondVC = storyboard?.instantiateViewController(identifier: "SecondVC")
        
        guard let secondVC = secondVC else { return }
        
        secondVC.passData = { [weak self] in
            self?.firstTextField.text = $0
        }
        
        show(secondVC, sender: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    deinit {
        print("FirstVC deinit")
    }

}

