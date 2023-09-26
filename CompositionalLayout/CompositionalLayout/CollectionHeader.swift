//
//  CollectionHeader.swift
//  CompositionalLayout
//
//  Created by 이상준 on 2023/09/26.
//

import UIKit

class ConllectionHeader: UICollectionReusableView {
    
    static let identifier = "ConllectionHeader"
    
    private let titleLabel: UILabel = {
        let lb = UILabel()
        lb.textColor = .black
        lb.font = .boldSystemFont(ofSize: 18)
        return lb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20.0),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10.0),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
    
    func configure(title: String) {
        titleLabel.text = title
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
