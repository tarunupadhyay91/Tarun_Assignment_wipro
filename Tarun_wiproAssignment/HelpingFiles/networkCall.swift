//
//  networkCall.swift
//  Tarun_wiproAssignment
//
//  Created by Tarun Upadhyay on 28/01/20.
//  Copyright © 2020 Tarun Upadhyay. All rights reserved.
//

import Foundation
public class networkCall: NSObject {


/// files data downloads from server

public   func getDownloadData(url:String,completion: @escaping (_ responseData: Data, _ error: NSError?) -> Void) {
    let myUrl = NSURL(string: url)!
    
    let request = NSMutableURLRequest(url:myUrl as URL)
    request.httpMethod = "GET"
    
    //        let dataEncode = stringOne.data(using: .utf8)
    //        //print("data is encodede",dataEncode!)
    //        request.httpBody = dataEncode
    //        // dataAdd(dictArray: params)
    
    // Excute HTTP Request
    let task = URLSession.shared.dataTask(with: request as URLRequest) {
        data, response, error in
        
        // Check for error
        if error != nil
        {
            completion(Data(), error as NSError?)
            //print("error=\(String(describing: error))")
            return
        }
        // Convert server json response to NSDictionary
        do {

            completion(data!, nil)
            
        } catch let error as NSError {
            //print(error.localizedDescription)
            completion(Data(), error as NSError?)
        }
        
    }
    task.resume()
    
}
  
}
