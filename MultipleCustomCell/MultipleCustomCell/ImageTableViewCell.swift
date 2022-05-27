//
//  ImageTableViewCell.swift
//  MultipleCustomCell
//
//  Created by Rosendo Vázquez on 27/05/22.
//

import UIKit

class ImageTableViewCell: UITableViewCell {
    
    static let identifier = "ImageTableViewCell"
      
    private let label :UILabel = {
        let label = UILabel()
        return label
    }()
    
    private let myImageView:UIImageView = {
        let img = UIImageView()
        return img
    }()
    
    public func configure(){
        contentView.addSubview(label)
        contentView.addSubview(myImageView)
        label.text = "Workspace :)"
        label.textAlignment = .center
        myImageView.image = UIImage(named: "Image1")
        myImageView.contentMode = .scaleAspectFill
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        //Constraints
        myImageView.frame = CGRect(x: 5, y: 5, width: 100, height: 100)
        label.frame = CGRect(x: 105, y: 5, width: contentView.frame.size.width - 105, height: 100)
        myImageView.layer.masksToBounds = true
        myImageView.layer.cornerRadius = 50
    }
}
