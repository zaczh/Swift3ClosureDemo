//
//  ViewController.swift
//  Demo
//
//  Created by zhang on 12/21/16.
//  Copyright © 2016 example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        AClass.afoo{ (data, error) -> Void in
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

class AClass: NSObject {
    class func afoo(_ completion: ((AnyObject?, NSError?) -> Void)) {
        let page = 1
        let fid = "75"
        let orderby = "time"
        let url = "test.html?&\(page)&fid=\(fid)&orderby=\(orderby)"
        
        //if comment out this line, then everything is OK.
        Log("requestTopicListOfForum url: \(url)")
        
        let session = URLSession.shared
        let request = URLRequest(url: URL(string: url, relativeTo: URL(string: "https://www.example.com/")!)!)
        let task = session.dataTask(with: request, completionHandler: { (data, response, error) -> Void in
        })
        
        task.resume()
    }
}

func Log(_ log: String) {
    //    NSLog("%@", log)
}
