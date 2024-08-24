//
//  ViewController.swift
//  iosmultisegmentedtableviewstudy
//
//  Created by kenan on 24.08.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var segments = ["Fruits","Colors","Seasons"]
    var segmentItems = [["Apple","Banana","Cherry"],["Green","Brown","Yellow"],["Summer","Winter","Autumn","Spring"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }


}


extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return segments.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return segmentItems[section].count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return segments[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:UITableViewCell?
    
        if tableView == tableView {
                    cell = tableView.dequeueReusableCell(withIdentifier: "cellname", for: indexPath)
                 cell?.textLabel?.text = segmentItems[indexPath.section][indexPath.row]
            }
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(segments[indexPath.section]) bölümünde \(segmentItems[indexPath.section][indexPath.row]) seçildi")
    }
    
    
    
    
}
