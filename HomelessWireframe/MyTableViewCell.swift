//
//  MyTableViewCell.swift
//  HomelessWireframe
//
//  Created by Emma Carpenetti on 7/21/21.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    //var specificLink = "google.com"
    //var linkHere = "https://\(specificLink)"
    
    static let identifier = "MyTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "MyTableViewCell", bundle: nil)
    }
    
    public func configure(with title: String, imageName: String) {
        myHeader.text = title // title = "Heading"
        myLabel.text = title // title = "Label"
        // do anything to myButton?
        /* if let url = URL(string: "") {
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
     }
 } */
    }

    @IBOutlet weak var myHeader: UILabel!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    
    
    @IBAction func viewLocationClicked(_ sender: Any) {
        if let url = URL(string: "https://www.google.com/search?q=shelters%20for%20homeless%20in%20harrisburg&rlz=1C5CHFA_enUS908US908&oq=shelters+for+homeless+in+harrisburgh&aqs=chrome..69i57j33i22i29i30l3.6254j1j7&sourceid=chrome&ie=UTF-8&tbs=lrf:!1m4!1u3!2m2!3m1!1e1!1m4!1u2!2m2!2m1!1e1!2m1!1e2!2m1!1e3!3sIAE,lf:1,lf_ui:2&tbm=lcl&sxsrf=ALeKk03JK04QAJWM-eA0aGVoLmhc3fgNdw:1626839506232&rflfq=1&num=10&rldimm=16739286303933425833&lqi=CiNzaGVsdGVycyBmb3IgaG9tZWxlc3MgaW4gaGFycmlzYnVyZ0jIoMba5YCAgAhaMRAAEAEQAhgAGAIYBCIjc2hlbHRlcnMgZm9yIGhvbWVsZXNzIGluIGhhcnJpc2J1cmeSARBob21lbGVzc19zaGVsdGVymgEkQ2hkRFNVaE5NRzluUzBWSlEwRm5TVVJKTTJVeWVqVkJSUkFCqgEdEAEqGSIVc2hlbHRlcnMgZm9yIGhvbWVsZXNzKAA&ved=2ahUKEwik9f-2ofPxAhXmFVkFHTm-DT0QvS4wAHoECAIQMg&rlst=f#rlfi=hd:;si:16739286303933425833,l,CiNzaGVsdGVycyBmb3IgaG9tZWxlc3MgaW4gaGFycmlzYnVyZ0jIoMba5YCAgAhaMRAAEAEQAhgAGAIYBCIjc2hlbHRlcnMgZm9yIGhvbWVsZXNzIGluIGhhcnJpc2J1cmeSARBob21lbGVzc19zaGVsdGVymgEkQ2hkRFNVaE5NRzluUzBWSlEwRm5TVVJKTTJVeWVqVkJSUkFCqgEdEAEqGSIVc2hlbHRlcnMgZm9yIGhvbWVsZXNzKAA;mv:[[40.2815746,-76.8544021],[40.2575794,-76.9212268]];tbs:lrf:!1m4!1u3!2m2!3m1!1e1!1m4!1u2!2m2!2m1!1e1!2m1!1e2!2m1!1e3!3sIAE,lf:1,lf_ui:2") {
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                 }
             }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
