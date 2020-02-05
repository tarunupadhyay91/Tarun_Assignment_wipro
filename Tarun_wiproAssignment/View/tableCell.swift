//
//  tableCell.swift
//  Tarun_wiproAssignment
//
//  Created by Tarun Upadhyay on 28/01/20.
//  Copyright © 2020 Tarun Upadhyay. All rights reserved.
//

import UIKit

class tableCell: UITableViewCell {

    @IBOutlet weak var mainImageView: UIImageView!
//    var cellView:UIStackView = {
//        var view = UIStackView()
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.backgroundColor = UIColor.red
//        return view
//    }()
//    var mainImageView: UIImageView = {
//        var imageView = UIImageView()
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.contentMode = .scaleAspectFill
//        return imageView
//    }()
    
//    var titleLabel: UILabel = {
//        var lbl = UILabel()
//               lbl.translatesAutoresizingMaskIntoConstraints = false
//               return lbl
//    }()
    
    @IBOutlet weak var cellMainView: UIView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)

     
        /*
        self.addSubview(cellView)
                     NSLayoutConstraint.activate([
                        cellView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
                        cellView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
                         cellView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
                        cellView.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -10)
                         ])
        
        self.contentView.addSubview(mainImageView)
             NSLayoutConstraint.activate([
                 mainImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
                mainImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
                 mainImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
                mainImageView.trailingAnchor.constraint(equalTo: self.leadingAnchor,constant: 200)
                 ]) */
//
//                self.addSubview(mainImageView)
//        
//                mainImageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
//                mainImageView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
//                mainImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
//                mainImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
//        contentView.translatesAutoresizingMaskIntoConstraints = false
        
//    }
    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
      
        

        // Configure the view for the selected state
    }

}
