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
        // Do any additional setup after loading the view.
        super.viewDidLoad()
        
        let orderby = "time"
        let url = "http://www.sample.com/api/index.php?\(orderby)"
        
        Log("Request url: \(url)")
        
        if let url = URL(string: url) {
            let request = URLRequest(url: url)
            print(request)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

func Log(_ log: String) {
    //    NSLog("%@", log)
}
