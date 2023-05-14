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
        label.text = "Header" /* 29 */
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

class FooterCollectionReusableView: UICollectionReusableView { /* 46 */
    
    static let identifier = "FooterCollectionReusableView" /* 47 */
    
    private let label: UILabel = { /* 48 */
        let label = UILabel() /* 49 */
        label.text = "Footer" /* 50 */
        label.textAlignment = .center /* 51 */
        label.textColor = .white /* 52 */
        return label /* 53 */
    }()
    
    public func configure() { /* 54 */
        backgroundColor = .systemRed /* 55 */
        addSubview(label) /* 56 */
    }
    
    override func layoutSubviews() { /* 57 */
        super.layoutSubviews() /* 58 */
        label.frame = bounds /* 59 */
    }
}
