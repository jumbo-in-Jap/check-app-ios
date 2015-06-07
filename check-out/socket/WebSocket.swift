//
//  WebSocket.swift
//  check-out
//
//  Created by 羽田 健太郎 on 2015/06/07.
//  Copyright (c) 2015年 &#32701;&#30000; &#20581;&#22826;&#37070;. All rights reserved.
//

import UIKit

class WebSocket: NSObject , SRWebSocketDelegate{
    
    var websocket:SRWebSocket!
    
    class var sharedInstance : WebSocket {
        struct Static {
            static var onceToken : dispatch_once_t = 0
            static var instance : WebSocket? = nil
        }
        dispatch_once(&Static.onceToken) {
            
            Static.instance = WebSocket()
        }
        return Static.instance!
    }

    override init() {
        super.init()
        self.websocket = SRWebSocket(URLRequest: NSURLRequest(URL: NSURL(string: "wss://check-out.herokuapp.com")!))
        self.websocket.delegate = self
        self.websocket.open()
    }
    
    func reconnect(){
        self.websocket.open()
    }
    
    func sendMessage(msg:String){
        self.websocket.send(msg)
    }
    
    func webSocket(webSocket: SRWebSocket!, didCloseWithCode code: Int, reason: String!, wasClean: Bool) {
    }
    
    func webSocket(webSocket: SRWebSocket!, didFailWithError error: NSError!) {
    }
    
    func webSocket(webSocket: SRWebSocket!, didReceiveMessage message: AnyObject!) {
        println("Receive object %@", message)
    }
    
    // room
    func makeRoom(id:String, name:String, owner:String){
        self.sendMessage(String(format:"{\"room\": {\"id\": \"%@\", \"name\": \"%@\"}}", id, name))
    }
    
    func getInvitingRoom(res:AnyObject){
        
        return
    }
}
