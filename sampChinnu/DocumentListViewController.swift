//
//  DocumentListViewController.swift
//  sampChinnu
//
//  Created by Shamshir on 15/05/18.
//  Copyright © 2018 shamshir. All rights reserved.
//

import UIKit

class DocumentListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    
    @IBOutlet weak var navBarMenuBtn: UIButton!
    @IBOutlet weak var navBarImageview: UIImageView!
    @IBOutlet weak var NavBar: UIView!
    @IBOutlet weak var documentListTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        documentListTableView.delegate = self
        documentListTableView.dataSource = self
        
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "documentListCell") as! DocumentListTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 50
        
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 50
        
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let  headerCell = tableView.dequeueReusableCell(withIdentifier: "documentTreeHeaderCell") as! DocumentTreeHeaderTableViewCell
        return headerCell
        
        
        
    }
    
    func attributedText(withString string: String, boldString: String, font: UIFont) -> NSAttributedString {
        let attributedString = NSMutableAttributedString(string: string,
                                                         attributes: [NSAttributedStringKey.font: font])
        let boldFontAttribute: [NSAttributedStringKey: Any] = [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: font.pointSize)]
        let range = (string as NSString).range(of: boldString)
        attributedString.addAttributes(boldFontAttribute, range: range)
        return attributedString
    }
}

