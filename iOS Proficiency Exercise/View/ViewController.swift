//
//  ViewController.swift
//  iOS Proficiency Exercise
//
//  Created by Sujanth Sebamalaithasan on 3/4/18.
//  Copyright © 2018 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var collectionView: UICollectionView!
    
    var collectionData = ["1 🐶", "2 🐰", "3 🦊", "4 🦁", "5 🐸", "6 🐮", "7 🐔", "8 🐷", "9 🐒", "10 🦉", "11 🐢", "12 🦖"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = (view.frame.size.width - 20) / 2
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        
        layout.itemSize = CGSize(width: width, height: width)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "DetailSegue" {
            
            if let dest = segue.destination as? DetailsViewController, let index = collectionView.indexPathsForSelectedItems?.first {
                
                dest.selection = collectionData[index.row]
            }
            
        }
    
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return collectionData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath)
        
        if let label = cell.viewWithTag(100) as? UILabel {
            label.text = collectionData[indexPath.row]
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
    }
    
}

