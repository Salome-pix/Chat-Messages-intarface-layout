//
//  MessageCell.swift
//  mesenger
//
//  Created by Mcbook Pro on 18.02.22.
//

import UIKit

class MessageCell: UITableViewCell {

   
    
    
   
    @IBOutlet weak var labelMessage: UILabel!
    
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        
    }

    
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        labelMessage.layer.cornerRadius = 15
    }
    
}
