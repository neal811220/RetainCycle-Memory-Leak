//
//  SecondViewController.swift
//  RetainCycle&MemoryLeak
//
//  Created by Neal on 2020/1/16.
//  Copyright © 2020 neal812220. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var passData:((String) -> Void)?
    
    @IBOutlet weak var dataFormFirst: UITextField!
    
    @IBAction func passDataToFirst(_ sender: UIButton) {
        
        guard let data = dataFormFirst.text else { return }
        
        passData?(data)
        
        navigationController?.popViewController(animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    deinit {
        print("SecondView deinit")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
