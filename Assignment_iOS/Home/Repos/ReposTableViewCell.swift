//
//  ReposTableViewCell.swift
//  Assignment_iOS
//
//  Created by AnnAsFA on 8/23/18.
//  Copyright © 2018 Assignment‏. All rights reserved.
//

import UIKit

class ReposTableViewCell: UITableViewCell {

    @IBOutlet weak var RepoName: UILabel!
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
   
        
        RepoName.text = " Repo name : \(object.fullName ?? "")"
        
    }

}
