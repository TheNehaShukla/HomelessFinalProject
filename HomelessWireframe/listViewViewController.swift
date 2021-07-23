//
//  listViewViewController.swift
//  HomelessWireframe
//
//  Created by Neha Shukla on 7/20/21.
//

import UIKit

class listViewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func dhsLink(_ sender: Any) {
        if let url = URL(string: "https://www.dhs.pa.gov/Services/Other-Services/Pages/Homeless-Assistance.aspx") {
                        UIApplication.shared.open(url, options: [:], completionHandler: nil)
                     }
    }
    
    @IBAction func natLink(_ sender: Any) {
        if let url = URL(string: "https://endhomelessness.org/ending-homelessness/policy/") {
                        UIApplication.shared.open(url, options: [:], completionHandler: nil)
                     }
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
