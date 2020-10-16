//
//  CommentData.swift
//  Instagram
//
//  Created by 鈴木正義 on 2020/10/15.
//  Copyright © 2020 masayoshi.suzuki. All rights reserved.
//

import UIKit
import Firebase

class CommentData: NSObject {
    var id: String
    var name: String?
    var caption: String?
    var date: Date?
    
    init(document: QueryDocumentSnapshot) {
        self.id = document.documentID
        
        let postDic = document.data()
        
        self.name = postDic["name"] as? String
        
        self.caption = postDic["caption"] as? String
        
        let timestamp = postDic["date"] as? Timestamp
        self.date = timestamp?.dateValue()
        
        
    }
}
