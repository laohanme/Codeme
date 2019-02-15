//
//  SegmentVC.swift
//  Codeme
//
//  Created by laohanme on 15/02/2019.
//  Copyright © 2019 laohanme. All rights reserved.
//

import UIKit
import SegementSlide

class SegmentVC: SegementSlideViewController {

	override var headerHeight: CGFloat? {
		return view.bounds.height/4
	}
	
	override var headerView: UIView? {
		return UIView()
	}
	
	override var titlesInSwitcher: [String] {
		return ["Swift", "Ruby", "Kotlin"]
	}
	
	override func segementSlideContentViewController(at index: Int) -> SegementSlideContentScrollViewDelegate? {
		return HomeVC()
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		canCacheScrollState = true
		reloadData()
		scrollToSlide(at: 0, animated: false)
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
