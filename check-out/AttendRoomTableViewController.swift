//
//  AttendRoomTableViewController.swift
//  check-out
//
//  Created by 羽田 健太郎 on 2015/06/07.
//  Copyright (c) 2015年 &#32701;&#30000; &#20581;&#22826;&#37070;. All rights reserved.
//

import UIKit


class AttendRoomTableViewController: UITableViewController {

    var members = []
    var myname:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        members = ["ken", "moe"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        if ((myname) != nil){
            return 1
        }
        return 2
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if ((myname) != nil){
            return members.count + 1
        }
        
        if (section == 0){
            return 1
        }else{
            return members.count
        }
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var identifer = ""
        
        // すでに自分の名前があれば
        if ((myname) != nil){
            identifer = "reuseIdentifier"
            let cell = tableView.dequeueReusableCellWithIdentifier(identifer, forIndexPath: indexPath) as! UITableViewCell
            if indexPath.row == 0{
                cell.textLabel?.text = myname
            }else{
                cell.textLabel?.text = members[indexPath.row - 1] as? String
            }
            return cell
        }

        // 自分の追加前
        if indexPath.section == 0{
            identifer = "attendCell"
            let cell = tableView.dequeueReusableCellWithIdentifier(identifer, forIndexPath: indexPath) as! UITableViewCell
            return cell
        }else{
            identifer = "reuseIdentifier"
            let cell = tableView.dequeueReusableCellWithIdentifier(identifer, forIndexPath: indexPath) as! UITableViewCell
            cell.textLabel?.text = members[indexPath.row] as? String
            return cell
        }
    }
    
    @IBAction func attend(sender:AnyObject){
        
        if let textField:UITextField = (sender as! UIButton).superview?.viewWithTag(100) as? UITextField{
            myname = textField.text
        }

        self.tableView.reloadData()
        
        var gvc:GraphViewController = self.storyboard?.instantiateViewControllerWithIdentifier("graph") as! GraphViewController
        self.presentViewController(gvc, animated: true, completion: nil)
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
