//
//  DocumentTreeViewController.swift
//  sampChinnu
//
//  Created by Shamshir on 15/05/18.
//  Copyright © 2018 shamshir. All rights reserved.
//

import UIKit

class DocumentTreeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    
    
    @IBOutlet weak var navBarMenuBtn: UIButton!
    @IBOutlet weak var navBarImageview: UIImageView!
    @IBOutlet weak var NavBar: UIView!
    @IBOutlet weak var documentTreeTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        documentTreeTableView.delegate = self
        documentTreeTableView.dataSource = self

        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "documentTreeCell") as! DocumentTreeTableViewCell
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
}
