//
//  NavigationSecondViewController.swift
//  practiceApp
//
//  Created by clapbin on 2023/09/15.
//

import UIKit

class NavigationSecondViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(view.frame)
        print("NavigationFisrtViewWillAppear")
        
        self.view.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(view.frame)
        print("NavigationFisrtViewDidAppear")
        
        self.view.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(view.frame)
        print("NavigationFisrtViewWillDisappear")
        
        self.view.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(view.frame)
        print("NavigationFisrtViewDidDisappear")
        
        self.view.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
    }
}

extension NavigationSecondViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell else {
            return CollectionViewCell()
        }
        
        cell.button.layer.masksToBounds = true
        cell.button.layer.cornerRadius = cell.button.frame.height / 2
        
        return cell
    }
    
}

extension NavigationSecondViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: view.frame.width, height: view.frame.width)
    }
}

