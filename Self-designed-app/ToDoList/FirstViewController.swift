//
//  FirstViewController.swift
//  ToDoList
//
//  Created by Nelson Wang on 10/24/16.
//  Copyright © 2016 BU ECE WENPENG WANG. All rights reserved.
//

import UIKit

var list = ["Send Osama email asking for upgrade on HW2", "Workout in Gym", "But flight ticket", "Demo the new app"]

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (list.count)
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell =  UITableViewCell(style: UITableViewCellStyle.default , reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        
        return cell
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            list.remove(at: indexPath.row)
            myTableView.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        myTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

