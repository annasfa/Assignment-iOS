//
//  RepoDetailsVC.swift
//  Assignment_iOS
//
//  Created by AnnAsFA on 8/22/18.
//  Copyright © 2018 Assignment‏. All rights reserved.
//

import UIKit
import Alamofire
import SVProgressHUD
class RepoDetailsVC: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    
    static var Url = ""
    
let cellIdentifier = "RepoDetailsTableViewCell"
    
  var DataResponse = [UsersModelDetail]()
    override func viewDidLoad() {
        super.viewDidLoad()

         getData()
        
        // Do any additional setup after loading the view.
    }

    
    override func viewWillAppear(_ animated: Bool) {
        setup()
    }
    
    
    func getData(){
        
         SVProgressHUD.show(withStatus: "wait")
        
        
        Alamofire.request(RepoDetailsVC.Url, method: .get)
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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


extension RepoDetailsVC : UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataResponse.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as! RepoDetailsTableViewCell
        
    cell.setData(object: DataResponse[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
}
