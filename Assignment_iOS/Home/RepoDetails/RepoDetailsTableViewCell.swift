//
//  RepoDetailsTableViewCell.swift
//  Assignment_iOS
//
//  Created by AnnAsFA on 8/22/18.
//  Copyright © 2018 Assignment‏. All rights reserved.
//

import UIKit

class RepoDetailsTableViewCell: UITableViewCell {

    @IBOutlet weak var lblInfo: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    
    
    func setData(object : UsersModelDetail)
    {
             let numberOfForks = "\(object.forks ?? 0)"
         let numberOfWatchers = "\(object.watchers ?? 0)"
        
        lblInfo.text = " Repo name : \(object.fullName ?? "") \n\n Number of forks : \(numberOfForks) \n\n Number of watchers : \(numberOfWatchers) \n"
        
    }
    
}
