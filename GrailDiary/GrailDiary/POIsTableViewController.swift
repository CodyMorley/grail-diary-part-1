//
//  POIsTableViewController.swift
//  GrailDiary
//
//  Created by Bling Morley on 3/19/20.
//  Copyright © 2020 Cody. All rights reserved.
//

import UIKit

class POIsTableViewController: UIViewController {

    var pois: [POI] = []
        
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension POIsTableViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pois.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "POICell", for: indexPath) as? POITableViewCell else { return UITableViewCell() }
        let poi = pois[indexPath.row]
        cell.poi = poi
        
        return cell
    }
    
    
}

