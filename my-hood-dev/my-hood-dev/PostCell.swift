//
//  PostCell.swift
//  my-hood-dev
//
//  Created by Dan Hyunchan Kim on 3/25/16.
//  Copyright © 2016 hyunchan. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak internal var postImg: UIImageView!
    @IBOutlet weak internal var titleLbl: UILabel!
    @IBOutlet weak internal var descLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        postImg.layer.cornerRadius = postImg.frame.size.width / 2
        postImg.clipsToBounds = true
        
    }
    
    func configureCell(post: Post)
    {
        titleLbl.text = post.title
        descLbl.text = post.postDesc
    }

  
}
