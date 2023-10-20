//
//  PetsTableViewCell.swift
//  TablasSantisteban
//
//  Created by Alumno on 6/10/23.
//

import UIKit

class PetsTableViewCell: UITableViewCell {

    
    @IBOutlet weak var petImage: UIImageView!
    
    @IBOutlet weak var petTitle: UILabel!
    
    @IBOutlet weak var petDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
        // Configure the view for the selected state
    }

}
