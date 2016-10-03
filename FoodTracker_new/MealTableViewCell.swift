//
//  MealTableViewCell.swift
//  FoodTracker_new
//
//  Created by Nelson Wang on 10/2/16.
//  Copyright © 2016 BU ECE WENPENG WANG. All rights reserved.
//

import UIKit
class MealTableViewCell: UITableViewCell {
    // MARK: Properties
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var ratingControl: RatingControl!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
