//
//  MyTableViewCell.swift
//  HomelessWireframe
//
//  Created by Emma Carpenetti on 7/21/21.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
