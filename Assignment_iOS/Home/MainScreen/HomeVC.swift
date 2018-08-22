//
//  HomeVC.swift
//  Assignment_iOS
//
//  Created by AnnAsFA on 8/20/18.
//  Copyright © 2018 Assignment‏. All rights reserved.
//

import UIKit
import Alamofire
import SVProgressHUD
class HomeVC: UIViewController {
    
    let cellIdentifier = "MainViewTableViewCell"
      var DataResponse = [GithubModel]()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        //setup()
        getData()
      
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
          setup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func getData(){
        
       SVProgressHUD.show(withStatus: "wait")
        

        Alamofire.request(Constants.URLConstants.BaseURL, method: .get)
            .responseGithubModel { response in
                
                print(response.request as Any)  // original URL request
                print(response.response as Any) // URL response
                print(response.result.value as Any)
                //let responce = response.result.value as! [String:AnyObject]
                if let Data = response.result.value {
                    print(Data)
                    self.DataResponse = [Data]
                    self.tableView.reloadData()
                    
                }
                // print(responce)
                
                
                
                
                
                
                SVProgressHUD.dismiss()
                
                
        }
        
    
        
    }

    func setup(){
          self.navigationController?.isNavigationBarHidden = true
        
        let CellNib = UINib(nibName: cellIdentifier, bundle:nil)
        
        self.tableView.register(CellNib, forCellReuseIdentifier: cellIdentifier)
        
    }
}


extension HomeVC: UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataResponse.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as! MainViewTableViewCell
        
        cell.setData(object: DataResponse[indexPath.row])
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        let obj = DataResponse[indexPath.row]
        RepoDetailsVC.Url = obj.reposURL!
        let vc = self.storyboard!.instantiateViewController(withIdentifier: "RepoDetailsVC") as! RepoDetailsVC
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}
