//
//  MemberTableViewCell.swift
//  check-out
//
//  Created by 羽田 健太郎 on 2015/06/07.
//  Copyright (c) 2015年 &#32701;&#30000; &#20581;&#22826;&#37070;. All rights reserved.
//

import UIKit

class MemberTableViewCell: UITableViewCell {
    @IBOutlet var nameLbl:UILabel!
    @IBOutlet var nameIcon: UIImageView!
    @IBOutlet var priceLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        // Screen Size の取得
        // Windowの表示領域すべてのサイズ(pixel).
        let myAppFrameSize: CGSize = UIScreen.mainScreen().applicationFrame.size
    
        
        //let screenWidth = self.bounds.width
        //let screenHeight = self.bounds.height
        
        let screenWidth = myAppFrameSize.width
        let screenHeight = myAppFrameSize.height
        
        var testDraw = DrawFigureMember(frame: CGRectMake(0, screenHeight, screenWidth, screenHeight))
        self.addSubview(testDraw)
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
