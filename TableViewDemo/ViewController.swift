//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Jerome on 2018/11/23.
//  Copyright © 2018年 Jerome. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{
    var weapons = ["AUG","AKM","SCAR","M416","M16A4","AKM","SKS","UZI","AUG","AKM","SCAR","M416","M16A4","AKM","SKS","UZI"]
    //数量
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weapons.count
    }
    //单元格
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeaponCell", for: indexPath)
        cell.textLabel?.text = weapons[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

