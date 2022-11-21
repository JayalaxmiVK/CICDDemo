//
//  ViewController.swift
//  RetirementCalculator
//
//  Created by Jayalaxmi Kulkarni on 21/11/22.
//

import UIKit
import AppCenterCrashes
class ViewController: UIViewController {

    @IBOutlet weak var appCenterCrashDemo: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        appCenterCrashDemo.text = "Hello AppCenter!"
       
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if ( AppCenterCrashes.Crashes.hasCrashedInLastSession ){
             //Put an alert for apology message 
         }
    }
    @IBAction func buttonTapped(_ sender: Any) {
        AppCenterCrashes.Crashes.generateTestCrash()
        print("This is for CI Demo by PR, trigger a build each time commit done!")
    }
    
}

