//
//  networkCall.swift
//  Tarun_wiproAssignment
//
//  Created by Tarun Upadhyay on 28/01/20.
//  Copyright © 2020 Tarun Upadhyay. All rights reserved.
//

import Foundation
public class networkCall: NSObject {
    func getDownloadData(url:String,completion: @escaping (_ responseData: Data, _ error: NSError?) -> Void) {
           URLSession.shared.dataTask(with: URL(string: url)!) { (data, res, err) in

               if let d = data {
                 do {
                   if let value = String(data: d, encoding: String.Encoding.ascii) {

                       if let jsonData = value.data(using: String.Encoding.utf8) {
                       
                                   
                                   completion(jsonData, nil)
                    }
                    }
                               } catch let error as NSError {
                                  
                                   completion(Data(), error as NSError?)
                               }
               }
               }.resume()


    }
}
