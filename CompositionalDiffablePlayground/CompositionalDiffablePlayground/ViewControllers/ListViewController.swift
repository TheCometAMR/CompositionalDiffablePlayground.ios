//
//  ListViewController.swift
//  CompositionalDiffablePlayground
//
//  Created by Filip Němeček on 14/11/2020.
//

import UIKit

class ListViewController: CompositionalCollectionViewViewController {
    
    var datasource: ColoredDiffableDataSource!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "List example"

        collectionView.register(cell: ColorCell.self)
        collectionView.contentInset.top = 10
        
        collectionView.setCollectionViewLayout(UICollectionViewCompositionalLayout.listLayout(), animated: false)
        
        datasource = ColoredDiffableDataSource(collectionView: collectionView)
        
        loadData()
    }
    
    private func loadData() {
        datasource.apply(ColorsSnapshot.random())
    }
    
    override func createLayout() -> UICollectionViewLayout {
        return UICollectionViewCompositionalLayout.listLayout()
    }
}
