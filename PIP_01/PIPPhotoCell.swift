//
//  PIPPhotoCell.swift
//  PIP_01
//
//  Created by mhevey on 4/21/15.
//  Copyright (c) 2015 Rock Valley College. All rights reserved.
//

import UIKit

class PIPPhotoCell: UICollectionViewCell {
   
    @IBOutlet weak var imageView: UIImageView!    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selected = false
    }
    
    override var selected : Bool {
        didSet {
            self.backgroundColor = selected ? themeColor : UIColor.blackColor()
        }
    }
    
    
    
    
    
    
    
}
