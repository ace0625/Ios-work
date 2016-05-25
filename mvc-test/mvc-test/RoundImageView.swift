//
//  RoundImageView.swift
//  mvc-test
//
//  Created by Dan Hyunchan Kim on 3/1/16.
//  Copyright © 2016 hyunchan. All rights reserved.
//

import UIKit

class RoundImageView: UIImageView {

    override func awakeFromNib() {
        self.layer.cornerRadius = 5.0
        self.clipsToBounds = true
    }

}
