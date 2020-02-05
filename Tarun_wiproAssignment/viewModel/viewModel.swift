//
//  viewModel.swift
//  Tarun_wiproAssignment
//
//  Created by Tarun Upadhyay on 28/01/20.
//  Copyright © 2020 Tarun Upadhyay. All rights reserved.
//

import Foundation
class viewModel:NSObject {
    let networkCallObj = networkCall()
    var dataArray : dataModel?
    func networkCalling(completion: @escaping (_ responseData: Bool) -> Void){
        networkCallObj.getDownloadData(url: "https://dl.dropboxusercontent.com/s/2iodh4vg0eortkl/facts.json") { (dataResponse, error) in
            do {
                let jsonDecoder = JSONDecoder()
                self.dataArray = try jsonDecoder.decode(dataModel.self, from: dataResponse)
                completion(true)
            }
            catch let error as NSError {
                print(error.localizedDescription)
                
            }
            
            
        }
        
    }
   
}
