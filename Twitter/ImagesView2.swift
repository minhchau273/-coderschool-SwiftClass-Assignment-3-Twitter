//
//  ImagesView2.swift
//  Twitter
//
//  Created by Dave Vo on 9/14/15.
//  Copyright (c) 2015 Chau Vo. All rights reserved.
//

import UIKit

class ImagesView2: UIView {
    
    @IBOutlet weak var imageView1: UIImageView!
    
    @IBOutlet weak var imageView2: UIImageView!
    
    var images = [NSURL]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        var imagesViews = [imageView1, imageView2]
        for imageView in imagesViews {
            imageView.userInteractionEnabled = true
        }
        
        let tapImage1 = UITapGestureRecognizer(target: self, action: "tapImage1:")
        imageView1.addGestureRecognizer(tapImage1)
        
        let tapImage2 = UITapGestureRecognizer(target: self, action: "tapImage2:")
        imageView2.addGestureRecognizer(tapImage2)
    }
    
    func tapImage1(sender:UITapGestureRecognizer) {
        TwitterHelper.sharedInstance.tapImage(self, images: images, index: 0)
    }
    
    func tapImage2(sender:UITapGestureRecognizer) {
        TwitterHelper.sharedInstance.tapImage(self, images: images, index: 1)
    }

}
