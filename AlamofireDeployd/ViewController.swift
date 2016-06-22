//
//  ViewController.swift
//  AlamofireDeployd
//
//  Created by Satnam Sync on 21/06/16.
//  Copyright © 2016 com.silverseahog. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        logIn()
    }
    
    
    func logIn() {
        
        let parameters = [
            "username": "username", //email
            "password": "password" //password
        ]
        
        var url: NSURL = NSURL(string: "http://xxxxxxxxxxx:2403/users/login")!
        
        Alamofire.request(.POST, url, parameters: parameters, encoding: .JSON)
            .responseJSON { response in
                var statusCode = (response.response?.statusCode)! //Gets HTTP status code, useful for debugging // Status Code: 200 indicates success
                
                print("Status code:", statusCode)
                
                if let value: AnyObject = response.result.value {
                    
                    print(value) // Returns id, path and uid if login is successful
                }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

