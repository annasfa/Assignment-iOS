//
//  MainViewTableViewCell.swift
//  Assignment_iOS
//
//  Created by AnnAsFA on 8/19/18.
//  Copyright © 2018 Assignment‏. All rights reserved.
//

import UIKit
import SDWebImage
class MainViewTableViewCell: UITableViewCell {
    @IBOutlet weak var avatar: UIImageView!
    
    @IBOutlet weak var BGView: UIView!
    @IBOutlet weak var public_repos_Number: UILabel!
    @IBOutlet weak var name: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        avatar.layer.masksToBounds = true
        avatar.layer.cornerRadius = avatar.frame.height/2
        BGView.layer.masksToBounds = true
        BGView.layer.cornerRadius = 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
        
        // Configure the view for the selected state
    }
    
    
    func setData(object : GithubModel)
    {
        
        name.text = object.login
        avatar.sd_setShowActivityIndicatorView(true)
        avatar.sd_setIndicatorStyle(.gray)
        
        
        avatar.sd_setImage(with: URL(string: object.avatarURL ?? ""), placeholderImage: UIImage(named: "apple-logo"))
       
        public_repos_Number.text = "public_repos_Number:" + "\(object.publicRepos ?? 0)"
     
        
    }
    
    
    
    
    
}
