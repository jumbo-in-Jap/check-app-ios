//
//  ViewController.swift
//  check-out
//
//  Created by 羽田 健太郎 on 2015/06/06.
//  Copyright (c) 2015年 羽田 健太郎. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SRWebSocketDelegate{
    
    var webSocket:SRWebSocket!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webSocket = SRWebSocket(URLRequest: NSURLRequest(URL: NSURL(string: "wss://check-out.herokuapp.com")!))
        webSocket.delegate = self
        
        webSocket.open()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func webSocket(webSocket: SRWebSocket!, didCloseWithCode code: Int, reason: String!, wasClean: Bool) {
        
    }
    
    func webSocket(webSocket: SRWebSocket!, didFailWithError error: NSError!) {
        
    }
    
    func webSocket(webSocket: SRWebSocket!, didReceiveMessage message: AnyObject!) {
        println("Received \"%@\"", message)
    }
}

