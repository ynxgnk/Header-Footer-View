//
//  HeaderCollectionReusableView.swift
//  Headers&Footers
//
//  Created by Nazar Kopeika on 14.05.2023.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
    
    static let identifier = "HeaderCollectionReusableView" /* 26 */
    
    private let label: UILabel = { /* 27 */
        let label = UILabel() /* 28 */
        label.text = "header" /* 29 */
        label.textAlignment = .center /* 30 */
        label.textColor = .white /* 31 */
        return label /* 32 */
    }()
    
    public func configure() { /* 33 */
        backgroundColor = .systemGreen /* 34 */
        addSubview(label) /* 35 */
    }
    
    override func layoutSubviews() { /* 36 */
        super.layoutSubviews() /* 37 */
        label.frame = bounds /* 38 */
    }
}


