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
//        networkCallObj.getDownloadData(url: "https://dl.dropboxusercontent.com/s/2iodh4vg0eortkl/facts.json") { (responseData, error) in
//            print(responseData.count)
            do {
               let jsonData = try? JSONSerialization.data(withJSONObject:jsonObj)
                let jsonDecoder = JSONDecoder()
                dataArray = try jsonDecoder.decode(dataModel.self, from: jsonData!)
                
                           } catch let error as NSError {
                               print(error.localizedDescription)
                             
                           }
        completion(true)
                       }
    
//    }
   
}
