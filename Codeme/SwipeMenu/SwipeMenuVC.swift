//
//  SwipeMenuVC.swift
//  Codeme
//
//  Created by laohanme on 31/01/2019.
//  Copyright © 2019 laohanme. All rights reserved.
//

import UIKit
import SwipeMenuViewController

class SwipeMenuVC: UIViewController, SwipeMenuViewDelegate, SwipeMenuViewDataSource {

	@IBOutlet var swipeMenu: SwipeMenuView!
	
	let array = ["Hello World", "Swift", "Objective C"]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		swipeMenu.dataSource = self
		swipeMenu.delegate = self
		
		var options: SwipeMenuViewOptions = .init()
		options.tabView.style = .segmented
		options.tabView.itemView.width = 200
		swipeMenu.reloadData(options: options)
	}
	
	func numberOfPages(in swipeMenuView: SwipeMenuView) -> Int {
		return array.count
	}
	
	func swipeMenuView(_ swipeMenuView: SwipeMenuView, titleForPageAt index: Int) -> String {
		return array[index]
	}
	
	func swipeMenuView(_ swipeMenuView: SwipeMenuView, viewControllerForPageAt index: Int) -> UIViewController {
		let viewController: UIViewController
		switch index {
		case 0:
			viewController = storyBoard(storyBoardID:"helloworld")
		case 1:
			viewController =  storyBoard(storyBoardID:"swift")
		default:
			viewController = storyBoard(storyBoardID:"objectivec")
		}
		addChild(viewController)
		return viewController
	}
	
	func storyBoard(storyBoardID:String) -> UIViewController {
		return storyboard!.instantiateViewController(withIdentifier: storyBoardID)
	}
}

