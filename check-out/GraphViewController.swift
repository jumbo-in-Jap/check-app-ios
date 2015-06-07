//
//  GraphViewController.swift
//  check-out
//
//  Created by 羽田 健太郎 on 2015/06/07.
//  Copyright (c) 2015年 &#32701;&#30000; &#20581;&#22826;&#37070;. All rights reserved.
//

import UIKit

class GraphViewController: UIViewController {
    @IBOutlet weak var tableview: UITableView!
    var members = ["ken", "jum"]

    override func viewDidLoad() {
        super.viewDidLoad()
        var nib  = UINib(nibName: "GraphTableViewCell", bundle:nil)
        tableview.registerNib(nib, forCellReuseIdentifier:"graph")
         nib  = UINib(nibName: "MemberTableViewCell", bundle:nil)
        tableview.registerNib(nib, forCellReuseIdentifier:"member")
         nib  = UINib(nibName: "CacheTableViewCell", bundle:nil)
        tableview.registerNib(nib, forCellReuseIdentifier:"cache")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Table view delegate
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return members.count - 1 + 2 // 自分がmemberに入っているので-1、あと上下の2cellｈ分
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.row == 0 {// 1cell
                return 300
        }else if(indexPath.row == members.count - 1 + 2  - 1){// last cell
            return 60
        }else{
            //member cell
            return 44
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell!
        if indexPath.row == 0 {
            // 1cell
             cell = tableView.dequeueReusableCellWithIdentifier("graph") as? GraphTableViewCell
        }else if(indexPath.row == members.count - 1 + 2  - 1){
            // last cell
             cell = tableView.dequeueReusableCellWithIdentifier("cache") as? CacheTableViewCell
        }else{
            //member cell
             cell = tableView.dequeueReusableCellWithIdentifier("member") as? MemberTableViewCell
        }
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
