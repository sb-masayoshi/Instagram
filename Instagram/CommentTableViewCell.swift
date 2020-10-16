//
//  CommentTableViewCell.swift
//  Instagram
//
//  Created by 鈴木正義 on 2020/10/15.
//  Copyright © 2020 masayoshi.suzuki. All rights reserved.
//

import UIKit
import Firebase

class CommentTableViewCell: UITableViewCell {
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setCommentData(_ commentData: CommentData){
        self.dateLabel.text = ""
        if commentData.caption != nil {
            self.captionLabel.text = "\(commentData.name!) : \(commentData.caption!)"
        }
        
        if let date = commentData.date {
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy-MM-dd HH:mm"
            let dateString = formatter.string(from: date)
            self.dateLabel.text = dateString
        }
    }
}

