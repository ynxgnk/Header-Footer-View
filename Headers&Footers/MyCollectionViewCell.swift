//
//  MyCollectionViewCell.swift
//  Headers&Footers
//
//  Created by Nazar Kopeika on 14.05.2023.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    static let identifier = "MyCollectionViewCell" /* 17 */
    
    static func nib() -> UINib { /* 18 */
        return UINib(nibName: "MyCollectionViewCell",
                     bundle: nil) /* 19 */
    }
    
    override func awakeFromNib() { /* 20 */
        super.awakeFromNib() /* 21 */
        backgroundColor = .link /* 22 */
    }
}

