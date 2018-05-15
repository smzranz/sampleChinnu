//
//  ViewController.swift
//  sampChinnu
//
//  Created by Shamshir on 15/05/18.
//  Copyright © 2018 shamshir. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var titleImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    var homepageTitles = [String]()
    var homepageImages = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        homepageTitles = ["Document","Task","Search","Dashboard","Settings","Help","Latest News","Work As One"]
        homepageImages = [#imageLiteral(resourceName: "home_document_1"),#imageLiteral(resourceName: "home_task_1"),#imageLiteral(resourceName: "home_search_1"),#imageLiteral(resourceName: "home_dashboard_1"),#imageLiteral(resourceName: "home_settings_1"),#imageLiteral(resourceName: "home_help_1"),#imageLiteral(resourceName: "home_news_1"),#imageLiteral(resourceName: "home_workasone_1")]
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return homepageTitles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "homePageCell", for: indexPath) as! HomePageCollectionViewCell
        cell.ImageView.image = homepageImages[indexPath.row]
        cell.label.text = homepageTitles[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       
        
        return CGSize(width: (collectionView.frame.size.width-3)/3, height: (collectionView.frame.size.width-3)/3)
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 5
    }

}

