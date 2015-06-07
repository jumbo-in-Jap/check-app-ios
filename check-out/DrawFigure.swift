//
//  DrawFigure.swift
//  check-out
//
//  Created by 喜楽智規 on 2015/06/07.
//  Copyright (c) 2015年 &#32701;&#30000; &#20581;&#22826;&#37070;. All rights reserved.
//

import UIKit

class DrawFigure: UIView {

    override func drawRect(rect: CGRect) {
        //画面サイズ取得
        let screenWidth = Int(UIScreen.mainScreen().bounds.size.width);
        let screenHeight = Int(UIScreen.mainScreen().bounds.size.height);
        
        //最初に白色で塗りつぶす
        var rectangle = UIBezierPath(rect: CGRectMake(0,0,CGFloat(screenWidth),CGFloat(screenHeight)))
        // stroke 色の設定
        UIColor(red:1.0,green:1.0,blue:1.0,alpha:1.0).setStroke()
        // 塗りつぶし色の設定
        UIColor(red:1.0,green:1.0,blue:1.0,alpha:1.0).setFill()
        
        // 内側の塗りつぶし
        rectangle.fill()
        // ライン幅
        rectangle.lineWidth = 8
        // 描画
        rectangle.stroke()
        
        //円グラフ描画時の中心座標のX,Y
        var centralX = 140  //計算上は160のはずだけどなんかずれる
        var centralY = 140  //計算上は155だけどなんかずれる
        
        //円グラフの半径
        var radiusGraph :Double=100
        
        //小さい円の半径
        let radiusSmallCircle :CGFloat=40
        
        //食べ物・飲み物の割合
        var food :Double = 0.6
        var drink :Double = 0.4
        
        //food描画 オレンジで描画
        for(var i :Double=0;i<food;i+=0.001){
        //i(割合)をラジアンに変換
        var rad = i*2*M_PI
        var startX :Double = Double(centralX)+radiusGraph*cos(rad)
        var startY :Double = Double(centralY)+radiusGraph*sin(rad)
        
        //println("\(startX),\(startY)")
        
        var oval = UIBezierPath(ovalInRect: CGRectMake(CGFloat(startX),CGFloat(startY), radiusSmallCircle, radiusSmallCircle))
        
        //var oval = UIBezierPath(ovalInRect: CGRectMake(radiusSmallCircle , radiusSmallCircle, 20, 20))
        
        
        // 塗りつぶし色の設定
        UIColor(red:1.0,green:0.682 ,blue:0.008,alpha:1.0).setFill()
        // 内側の塗りつぶし
        oval.fill()
        
        // stroke 色の設定
        UIColor(red:1.0,green:0.682 ,blue:0.008,alpha:1.0).setStroke()
        // ライン幅
        //oval.lineWidth = 2
        // 描画
        oval.stroke()
        }
        //drink描画
        for(var i :Double=1;i>food;i-=0.001){
        //i(割合)をラジアンに変換
        var rad = i*2*M_PI
        var startX :Double = Double(centralX)+radiusGraph*cos(rad)
        var startY :Double = Double(centralY)+radiusGraph*sin(rad)
        
        println("\(startX),\(startY)")
        
        var oval = UIBezierPath(ovalInRect: CGRectMake(CGFloat(startX),CGFloat(startY), radiusSmallCircle, radiusSmallCircle))
        
        //var oval = UIBezierPath(ovalInRect: CGRectMake(radiusSmallCircle , radiusSmallCircle, 20, 20))
        
        
        // 塗りつぶし色の設定
        UIColor(red:0.322,green:0.835 ,blue:0.769,alpha:1.0).setFill()
        // 内側の塗りつぶし
        oval.fill()
        
        // stroke 色の設定
        UIColor(red:0.322,green:0.835 ,blue:0.769,alpha:1.0).setStroke()
        // ライン幅
        //oval.lineWidth = 2
        // 描画
        oval.stroke()
        }
        
        var rad = food*2*M_PI
        var startX :Double = Double(centralX)+radiusGraph*cos(rad)
        var startY :Double = Double(centralY)+radiusGraph*sin(rad)
        var oval = UIBezierPath(ovalInRect: CGRectMake(CGFloat(startX),CGFloat(startY), radiusSmallCircle, radiusSmallCircle))
        
        // 塗りつぶし色の設定
        UIColor(red:1.0,green:0.682 ,blue:0.008,alpha:1.0).setFill()
        // 内側の塗りつぶし
        oval.fill()
        
        // stroke 色の設定
        UIColor(red:1.0,green:0.682 ,blue:0.008,alpha:1.0).setStroke()
        // ライン幅
        //oval.lineWidth = 2
        // 描画
        oval.stroke()
        
        //----------白い円→赤色(drinkの円)→白い円の順で描画----------
        startX = Double(centralX)+radiusGraph*cos(0.05)
        startY = Double(centralY)+radiusGraph*sin(0.05)
        //白い円表示
        oval = UIBezierPath(ovalInRect: CGRectMake(CGFloat(startX-1),CGFloat(startY-1), radiusSmallCircle+2, radiusSmallCircle+2))
        // 塗りつぶし色の設定
        UIColor(red:1.0,green:1.0,blue:1.0,alpha:1.0).setFill()
        // 内側の塗りつぶし
        oval.fill()
        // stroke 色の設定
        UIColor(red:1.0,green:1.0,blue:1.0,alpha:1.0).setStroke()
        // 描画
        oval.stroke()
        
        startX = Double(centralX)+radiusGraph*cos(0.0)
        startY = Double(centralY)+radiusGraph*sin(0.0)
        //白い円表示
        oval = UIBezierPath(ovalInRect: CGRectMake(CGFloat(startX),CGFloat(startY), radiusSmallCircle, radiusSmallCircle))
        // 塗りつぶし色の設定
        UIColor(red:0.322,green:0.835 ,blue:0.769,alpha:1.0).setFill()
        // 内側の塗りつぶし
        oval.fill()
        // stroke 色の設定
        UIColor(red:0.322,green:0.835 ,blue:0.769,alpha:1.0).setStroke()
        // 描画
        oval.stroke()
        
        startX = Double(centralX)+radiusGraph*cos(-0.05)
        startY = Double(centralY)+radiusGraph*sin(-0.05)
        //白い円表示
        oval = UIBezierPath(ovalInRect: CGRectMake(CGFloat(startX),CGFloat(startY), radiusSmallCircle-2, radiusSmallCircle-2))
        // 塗りつぶし色の設定
        UIColor(red:1.0,green:1.0,blue:1.0,alpha:1.0).setFill()
        // 内側の塗りつぶし
        oval.fill()
        // stroke 色の設定
        UIColor(red:1.0,green:1.0,blue:1.0,alpha:1.0).setStroke()
        // 描画
        oval.stroke()
        
        // Labelを作成.
        let drinkPercentLabel: UILabel = UILabel(frame: CGRectMake(0,0,23,20))
        // 背景をオレンジ色にする.
        drinkPercentLabel.backgroundColor = UIColor(red:1.0,green:1.0,blue:1.0,alpha:1.0)
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
        UIColor(red:1.0,green:1.0,blue:1.0,alpha:1.0).setFill()
        // 内側の塗りつぶし
        oval.fill()
        // stroke 色の設定
        UIColor(red:1.0,green:1.0,blue:1.0,alpha:1.0).setStroke()
        // 描画
        oval.stroke()
        
        startX=Double(centralX)+radiusGraph*cos(food*2*M_PI)
        startY=Double(centralY)+radiusGraph*sin(food*2*M_PI)
        //白い円表示
        oval = UIBezierPath(ovalInRect: CGRectMake(CGFloat(startX),CGFloat(startY), radiusSmallCircle, radiusSmallCircle))
        // 塗りつぶし色の設定
        UIColor(red:1.0,green:0.682 ,blue:0.008,alpha:1.0).setFill()
        // 内側の塗りつぶし
        oval.fill()
        // stroke 色の設定
        UIColor(red:1.0,green:0.682 ,blue:0.008,alpha:1.0).setStroke()
        // 描画
        oval.stroke()
        
        startX=Double(centralX)+radiusGraph*cos((food-0.01)*2*M_PI)
        startY=Double(centralY)+radiusGraph*sin((food-0.01)*2*M_PI)
        //白い円表示
        oval = UIBezierPath(ovalInRect: CGRectMake(CGFloat(startX),CGFloat(startY), radiusSmallCircle-2, radiusSmallCircle-2))
        // 塗りつぶし色の設定
        UIColor(red:1.0,green:1.0,blue:1.0,alpha:1.0).setFill()
        // 内側の塗りつぶし
        oval.fill()
        // stroke 色の設定
        UIColor(red:1.0,green:1.0,blue:1.0,alpha:1.0).setStroke()
        // 描画
        oval.stroke()
        
        // Labelを作成.
        let foodPercentLabel: UILabel = UILabel(frame: CGRectMake(0,0,23,20))
        // 背景をオレンジ色にする.
        foodPercentLabel.backgroundColor = UIColor(red:1.0,green:1.0,blue:1.0,alpha:1.0)
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
        nameLabel.backgroundColor = UIColor(red:1.0,green:1.0,blue:1.0,alpha:1.0)
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
        priceLabel.backgroundColor = UIColor(red:1.0,green:1.0,blue:1.0,alpha:1.0)
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
        
        //右下の注釈つける
        //drink描画
        for(var i :Double=0;i<10;i++){
            //i(割合)をラジアンに変換
            var rad = i*2*M_PI
            var startX :Double = Double(screenWidth)*4.0/10.0+i*3
            var startY :Double = Double(screenHeight)*5.1/10.0
            
            var oval = UIBezierPath(ovalInRect: CGRectMake(CGFloat(startX),CGFloat(startY), 5, 5))
            
            // 塗りつぶし色の設定
            UIColor(red:0.322,green:0.835 ,blue:0.769,alpha:1.0).setFill()
            // 内側の塗りつぶし
            oval.fill()
            
            // stroke 色の設定
            UIColor(red:0.322,green:0.835 ,blue:0.769,alpha:1.0).setStroke()
            // ライン幅
            //oval.lineWidth = 2
            // 描画
            oval.stroke()
        }
        

    }
}
