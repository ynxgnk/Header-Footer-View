//
//  ViewController.swift
//  Headers&Footers
//
//  Created by Nazar Kopeika on 14.05.2023.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout { /* 14 3 protocols */
    
    var colletionView: UICollectionView? /* 1 */

    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = UICollectionViewFlowLayout() /* 2 */
        layout.scrollDirection = .vertical /* 3 */
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0) /* 4 */
        layout.itemSize = CGSize(width: view.frame.size.width/2.2,
                                 height: view.frame.size.width/2.2) /* 5 */
        colletionView = UICollectionView(frame: .zero, collectionViewLayout: layout) /* 6 */
        colletionView?.register(MyCollectionViewCell.nib(),
                                forCellWithReuseIdentifier: MyCollectionViewCell.identifier) /* 23 */
        colletionView?.delegate = self /* 7 */
        colletionView?.dataSource = self /* 8 */
        colletionView?.backgroundColor = .white /* 9 */
        view.addSubview(colletionView!) /* 10 */
    }

    override func viewDidLayoutSubviews() { /* 11 */
        super.viewDidLayoutSubviews() /* 12 */
        colletionView?.frame = view.bounds /* 13 */
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int { /* 15 */
        4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell { /* 16 */
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier,
                                                      for: indexPath) /* 24 */
        return cell /* 25 */
    }
}

