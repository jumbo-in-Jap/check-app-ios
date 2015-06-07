//
//  RoomInviteViewController.swift
//  check-out
//
//  Created by 羽田 健太郎 on 2015/06/07.
//  Copyright (c) 2015年 &#32701;&#30000; &#20581;&#22826;&#37070;. All rights reserved.
//

import UIKit

class RoomInviteViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        WebSocket.sharedInstance.makeRoom("test", name: "test", owner: "test")
    }
    
    override func viewWillAppear(animated: Bool) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
