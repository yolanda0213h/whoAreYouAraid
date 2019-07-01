//
//  boyTableViewCell.swift
//  whoAreYouAraid
//
//  Created by Yolanda H. on 2019/7/1.
//  Copyright © 2019 Yolanda H. All rights reserved.
//

import UIKit

class boyTableViewCell: UITableViewCell {

    @IBOutlet weak var lyricLabel: UILabel!
    @IBOutlet weak var roleImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
