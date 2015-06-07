//
//  GraphTableViewCell.swift
//  check-out
//
//  Created by 羽田 健太郎 on 2015/06/07.
//  Copyright (c) 2015年 &#32701;&#30000; &#20581;&#22826;&#37070;. All rights reserved.
//

import UIKit

class GraphTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //ここに円形のやーつ！
        // Do any additional setup after loading the view, typically from a nib.
        // Do any additional setup after loading the view, typically from a nib.
        // Screen Size の取得
        let screenWidth = self.bounds.width
        let screenHeight = self.bounds.height
        
        var testDraw = DrawFigure(frame: CGRectMake(0, 0, screenWidth, screenHeight))
        self.addSubview(testDraw)
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
