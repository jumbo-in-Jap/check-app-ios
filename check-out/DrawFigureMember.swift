//
//  DrawFigureMember.swift
//  check-out
//
//  Created by 喜楽智規 on 2015/06/07.
//  Copyright (c) 2015年 &#32701;&#30000; &#20581;&#22826;&#37070;. All rights reserved.
//

import UIKit

class DrawFigureMember: UIView {
    override func drawRect(rect: CGRect) {
        //画面サイズ取得
        let screenWidth = Int(UIScreen.mainScreen().bounds.size.width);
        let screenHeight = Int(UIScreen.mainScreen().bounds.size.height);
        
        //最初に白色で塗りつぶす
        var rectangle = UIBezierPath(rect: CGRectMake(0,0,CGFloat(screenWidth),CGFloat(screenHeight)))
        // stroke 色の設定
        UIColor.greenColor().setStroke()
        // 塗りつぶし色の設定
        UIColor.greenColor().setFill()
        // 内側の塗りつぶし
        rectangle.fill()
        // ライン幅
        rectangle.lineWidth = 8
        // 描画
        rectangle.stroke()
        
        //食べ物・飲み物の描画する量
        var food :Double = 3
        var drink :Double = 2
        
        //food描画
        for(var i :Double=0;i<food;i+=0.1){
            var startX :Double = i+30
            var startY :Double = Double(screenHeight)*9/10
            
            var oval = UIBezierPath(ovalInRect: CGRectMake(CGFloat(startX),CGFloat(startY), 10,10))
            
            // 塗りつぶし色の設定
            UIColor.greenColor().setFill()
            // 内側の塗りつぶし
            oval.fill()
            
            // stroke 色の設定
            UIColor.greenColor().setStroke()
            // 描画
            oval.stroke()
        }
        /*
        //----------白い円→赤色(drinkの円)→白い円の順で描画----------
        startX = Double(centralX)+radiusGraph*cos(0.05)
        startY = Double(centralY)+radiusGraph*sin(0.05)
        //白い円表示
        oval = UIBezierPath(ovalInRect: CGRectMake(CGFloat(startX-1),CGFloat(startY-1), radiusSmallCircle+2, radiusSmallCircle+2))
        // 塗りつぶし色の設定
        UIColor.whiteColor().setFill()
        // 内側の塗りつぶし
        oval.fill()
        // stroke 色の設定
        UIColor.whiteColor().setStroke()
        // 描画
        oval.stroke()
        
        startX = Double(centralX)+radiusGraph*cos(0.0)
        startY = Double(centralY)+radiusGraph*sin(0.0)
        //白い円表示
        oval = UIBezierPath(ovalInRect: CGRectMake(CGFloat(startX),CGFloat(startY), radiusSmallCircle, radiusSmallCircle))
        // 塗りつぶし色の設定
        UIColor.redColor().setFill()
        // 内側の塗りつぶし
        oval.fill()
        // stroke 色の設定
        UIColor.redColor().setStroke()
        // 描画
        oval.stroke()
        
        startX = Double(centralX)+radiusGraph*cos(-0.05)
        startY = Double(centralY)+radiusGraph*sin(-0.05)
        //白い円表示
        oval = UIBezierPath(ovalInRect: CGRectMake(CGFloat(startX),CGFloat(startY), radiusSmallCircle-2, radiusSmallCircle-2))
        // 塗りつぶし色の設定
        UIColor.whiteColor().setFill()
        // 内側の塗りつぶし
        oval.fill()
        // stroke 色の設定
        UIColor.whiteColor().setStroke()
        // 描画
        oval.stroke()
        
        // Labelを作成.
        let drinkPercentLabel: UILabel = UILabel(frame: CGRectMake(0,0,23,20))
        // 背景をオレンジ色にする.
        drinkPercentLabel.backgroundColor = UIColor.whiteColor()
        // Labelに文字を代入.
        drinkPercentLabel.text = "80%"
        // 文字の色を黒にする.
        drinkPercentLabel.textColor = UIColor.blackColor()
        // Textを中央寄せにする.
        drinkPercentLabel.textAlignment = NSTextAlignment.Left
        // 配置する座標を設定する.
        drinkPercentLabel.layer.position = CGPoint(x: CGFloat(startX+20) ,y: CGFloat(startY+20))
        //fontsize
        drinkPercentLabel.font = UIFont.systemFontOfSize(10);
        // ViewにLabelを追加.
        self.addSubview(drinkPercentLabel)
        
        
        //----------白い円→緑色(foodの円)→白い円の順で描画----------
        startX=Double(centralX)+radiusGraph*cos((food+0.01)*2*M_PI)
        startY=Double(centralY)+radiusGraph*sin((food+0.01)*2*M_PI)
        //白い円表示
        oval = UIBezierPath(ovalInRect: CGRectMake(CGFloat(startX-1),CGFloat(startY-1), radiusSmallCircle+2, radiusSmallCircle+2))
        // 塗りつぶし色の設定
        UIColor.whiteColor().setFill()
        // 内側の塗りつぶし
        oval.fill()
        // stroke 色の設定
        UIColor.whiteColor().setStroke()
        // 描画
        oval.stroke()
        
        startX=Double(centralX)+radiusGraph*cos(food*2*M_PI)
        startY=Double(centralY)+radiusGraph*sin(food*2*M_PI)
        //白い円表示
        oval = UIBezierPath(ovalInRect: CGRectMake(CGFloat(startX),CGFloat(startY), radiusSmallCircle, radiusSmallCircle))
        // 塗りつぶし色の設定
        UIColor.greenColor().setFill()
        // 内側の塗りつぶし
        oval.fill()
        // stroke 色の設定
        UIColor.greenColor().setStroke()
        // 描画
        oval.stroke()
        
        startX=Double(centralX)+radiusGraph*cos((food-0.01)*2*M_PI)
        startY=Double(centralY)+radiusGraph*sin((food-0.01)*2*M_PI)
        //白い円表示
        oval = UIBezierPath(ovalInRect: CGRectMake(CGFloat(startX),CGFloat(startY), radiusSmallCircle-2, radiusSmallCircle-2))
        // 塗りつぶし色の設定
        UIColor.whiteColor().setFill()
        // 内側の塗りつぶし
        oval.fill()
        // stroke 色の設定
        UIColor.whiteColor().setStroke()
        // 描画
        oval.stroke()
        
        // Labelを作成.
        let foodPercentLabel: UILabel = UILabel(frame: CGRectMake(0,0,23,20))
        // 背景をオレンジ色にする.
        foodPercentLabel.backgroundColor = UIColor.whiteColor()
        // Labelに文字を代入.
        foodPercentLabel.text = "20%"
        // 文字の色を黒にする.
        foodPercentLabel.textColor = UIColor.blackColor()
        // Textを中央寄せにする.
        foodPercentLabel.textAlignment = NSTextAlignment.Center
        // 配置する座標を設定する.
        foodPercentLabel.layer.position = CGPoint(x: CGFloat(startX+20) ,y: CGFloat(startY+20))
        //fontsize
        foodPercentLabel.font = UIFont.systemFontOfSize(10);
        // ViewにLabelを追加.
        self.addSubview(foodPercentLabel)
        
        
        
        //名前ラベル
        
        // Labelを作成.
        let nameLabel: UILabel = UILabel(frame: CGRectMake(0,0,100,20))
        // 背景をオレンジ色にする.
        nameLabel.backgroundColor = UIColor.whiteColor()
        // Labelに文字を代入.
        nameLabel.text = "きらっくま"
        // 文字の色を黒にする.
        nameLabel.textColor = UIColor.blackColor()
        // Textを中央寄せにする.
        nameLabel.textAlignment = NSTextAlignment.Left
        // 配置する座標を設定する.
        nameLabel.layer.position = CGPoint(x: CGFloat(180) ,y: CGFloat(140))
        //fontsize
        nameLabel.font = UIFont.systemFontOfSize(10);
        // ViewにLabelを追加.
        self.addSubview(nameLabel)
        
        
        //金額ラベル
        let priceLabel: UILabel = UILabel(frame: CGRectMake(0,0,100,20))
        // 背景をオレンジ色にする.
        priceLabel.backgroundColor = UIColor.whiteColor()
        // Labelに文字を代入.
        priceLabel.text = "1280円"
        // 文字の色を黒にする.
        priceLabel.textColor = UIColor.blackColor()
        // Textを中央寄せにする.
        priceLabel.textAlignment = NSTextAlignment.Left
        // 配置する座標を設定する.
        priceLabel.layer.position = CGPoint(x: CGFloat(160) ,y: CGFloat(170))
        //fontsize
        priceLabel.font = UIFont.systemFontOfSize(30);
        // ViewにLabelを追加.
        self.addSubview(priceLabel)
        
        //アイコンのimage
        var myImageView: UIImageView!
        // UIImageViewを作成する.
        myImageView = UIImageView(frame: CGRectMake(0,0,15,15))
        // 表示する画像を設定する.
        let myImage = UIImage(named: "beer.jpg")
        // 画像をUIImageViewに設定する.
        myImageView.image = myImage
        // 画像の表示する座標を指定する.
        myImageView.layer.position = CGPoint(x: CGFloat(120) ,y: CGFloat(140))
        // UIImageViewをViewに追加する.
        self.addSubview(myImageView)
        
        */
    }

}
