//
//  BannerTableViewCell.swift
//  MultipleCustomCell
//
//  Created by Rosendo Vázquez on 27/05/22.
//

import UIKit

class BannerTableViewCell: UITableViewCell {

    static let identifier = "BannerTableViewCell"
    
    private let img : UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 20
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.masksToBounds = true
        return image
    }()
    
    
    public func configure(){
        contentView.addSubview(img)
        img.image = UIImage(named: "banner")
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        //Constraints
        img.frame = CGRect(x: 10, y: 10, width: contentView.frame.width - 20, height: contentView.frame.height - 20)
    }
    
}
