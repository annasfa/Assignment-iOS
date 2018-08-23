//
//  ReposVC.swift
//  Assignment_iOS
//
//  Created by AnnAsFA on 8/23/18.
//  Copyright © 2018 Assignment‏. All rights reserved.
//

import UIKit
import Alamofire
import SVProgressHUD
class ReposVC: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    
    static var Url = ""
      var DataResponse = [UsersModelDetail]()
    let cellIdentifier = "ReposTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
getData()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewWillAppear(_ animated: Bool) {
        setup()
    }
    
    
    func getData(){
        
        SVProgressHUD.show(withStatus: "wait")
        
        
        Alamofire.request(ReposVC.Url, method: .get)
            .responseUsersModelDetails { response in
                
                print(response.request as Any)  // original URL request
                print(response.response as Any) // URL response
                print(response.result.value as Any)
                //let responce = response.result.value as! [String:AnyObject]
                if let Data = response.result.value {
                    print(Data)
                    self.DataResponse = Data
                    
                    self.tableView.reloadData()
                    
                }
                // print(responce)
                
                
                
                
                
                
                SVProgressHUD.dismiss()
                
                
        }
        
        
        
    }
    
    func setup(){
        self.navigationController?.isNavigationBarHidden = false
        
        
    }


}
extension ReposVC : UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataResponse.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as! ReposTableViewCell
        
        cell.setData(object: DataResponse[indexPath.row])
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         let obj = DataResponse[indexPath.row]
        
        RepoDetailsVC.DataResponse =  [obj]
        let vc = self.storyboard!.instantiateViewController(withIdentifier: "RepoDetailsVC") as! RepoDetailsVC
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension 
    }
    
    
    
    
}

