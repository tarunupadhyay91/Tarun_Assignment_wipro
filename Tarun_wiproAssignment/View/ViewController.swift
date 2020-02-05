//
//  ViewController.swift
//  Tarun_wiproAssignment
//
//  Created by Tarun Upadhyay on 28/01/20.
//  Copyright © 2020 Tarun Upadhyay. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (viewModelObj.dataArray?.rows?.count) ?? 0
    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:tableCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! tableCell
       
        let obj:Rows = (viewModelObj.dataArray?.rows![indexPath.row])!
        
        cell.titleLbl.text = obj.title ?? ""
        cell.descLbl.text = obj.description ?? ""
        if obj.imageHref != "" && obj.imageHref != nil {
        DispatchQueue.global().async {
            let url = URL(string: obj.imageHref ?? "")
            let dataImage = try? Data(contentsOf: url!)
            if dataImage?.count != nil {
                DispatchQueue.main.async {
                    cell.mainImageView?.image = UIImage.init(data: dataImage!)
                  //  cell.mainImageView.image = UIImage.init(data: dataImage ?? Data.init())
                }
            
            }
            
        }
           
        }
        else{
         
        }
        return cell
    }
//    func tableView(_ tableView: UITableView ,heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return UITableView.automaticDimension
//    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let viewModelObj = viewModel()
    private let refreshControl = UIRefreshControl()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // self.tableView.register(tableCell.self, forCellReuseIdentifier: "cell")
//        tableView.rowHeight = UITableView.automaticDimension
//        tableView.estimatedRowHeight = UITableView.automaticDimension

        self.fatchData()
        if #available(iOS 10.0, *) {
            tableView.refreshControl = refreshControl
        } else {
            tableView.addSubview(refreshControl)
        }
        
        refreshControl.addTarget(self, action: #selector(refreshTableData), for: .valueChanged)
        
        
    }

 @objc private func refreshTableData(_ sender: Any) {
    
     fatchData()
    self.refreshControl.endRefreshing()
 }
    
    func fatchData(){
        viewModelObj.networkCalling(){ (responseData) in
                   print(responseData)
                   DispatchQueue.main.async {
                    self.navigationItem.title = self.viewModelObj.dataArray?.title
                    self.tableView.reloadData()
                   }
                  
               }
    }
}

extension UIImage {
    func getCropRatio()-> CGFloat {
        let widthRatio = CGFloat(self.size.width / self.size.height)
        return widthRatio
    }
}
