//
//  ViewController.swift
//  CompositionalLayout
//
//  Created by 이상준 on 2023/09/26.
//

import UIKit

class ViewController: UIViewController {
    
    private let collectionView: UICollectionView = {
        let cv = UICollectionView()
        cv.backgroundColor = .red
        return cv
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureUI()
    }
    
    func configureUI() {
        view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

