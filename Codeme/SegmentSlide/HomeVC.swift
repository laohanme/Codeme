//
//  HomeVC.swift
//  Codeme
//
//  Created by laohanme on 15/02/2019.
//  Copyright © 2019 laohanme. All rights reserved.
//

import UIKit
import SegementSlide

class HomeVC: UITableViewController, SegementSlideContentScrollViewDelegate {
	
	@IBOutlet var myTable: UITableView!
	
	let data = ["AAA", "BBB", "CCC"]
	
	@objc var scrollView: UIScrollView {
		return myTable
	}

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return data.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "initCell", for: indexPath)
		cell.textLabel?.text = data[indexPath.row]
		return cell
	}
	
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: true)
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
