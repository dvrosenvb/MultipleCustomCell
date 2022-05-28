//
//  StoryTableViewCell.swift
//  MultipleCustomCell
//
//  Created by Rosendo Vázquez on 27/05/22.
//

import UIKit

class StoryTableViewCell: UITableViewCell {
    
    static let identifier = "StoryTableViewCell"
    
    private let imgAvatar:UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.clipsToBounds = true
        return img
    }()
    
    private let imgRing:UIImageView = {
        let img = UIImageView()
        return img
    }()
    
    private let lblUserName:UILabel = {
        let label = UILabel()
        label.text = "username"
        label.textAlignment = .center
        return  label
    }()
    
    
    public func configure(){
        contentView.addSubview(imgAvatar)
        contentView.addSubview(imgRing)
        contentView.addSubview(lblUserName)
        imgAvatar.layer.cornerRadius = 40
        imgAvatar.image = UIImage(named: "avatar")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        //Constraints
        imgAvatar.frame = CGRect(x: 10, y: 8, width: 80, height: 80)
        imgRing.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
        imgRing.layer.cornerRadius = 40
        lblUserName.frame = CGRect(x: 10, y: 88, width: 80, height: 20)
    }
    
    
}
