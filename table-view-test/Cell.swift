//
//  Cell.swift
//  table-view-test
//
//  Created by Dan Hyunchan Kim on 3/8/16.
//  Copyright © 2016 hyunchan. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {

    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var mainLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        mainImg.layer.cornerRadius = 5.0
        mainImg.clipsToBounds = true
    }

    func configureCell(image: UIImage, text: String)
    {
        mainImg.image = image
        mainLbl.text = text
    }
}
