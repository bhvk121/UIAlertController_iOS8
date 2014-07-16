//
//  SAListViewController.swift
//  UIAlertViewController_iOS8
//
//  Created by Bhavik Shah on 16/07/14.
//  Copyright (c) 2014 solutionAnalysts. All rights reserved.
//

import UIKit

class SAListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }

    override func viewDidLoad() {
        super.viewDidLoad()
		IBtblView.delegate = self
		IBtblView.dataSource = self
    }
	
	override func viewWillAppear(animated: Bool) {
		IBtblView.reloadData()
	}
	

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

	@IBOutlet var IBtblView : UITableView = nil
	var tableView : UITableView?
	let arrControls = ["Simple Alert Dialog","Alert Dialog with actions","Action sheet with actions","Alert dialog with Textfields"]
	
	// #pragma mark - UITableView
	
	func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int{
		return arrControls.count
	}
	
	func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
	{
		let cell = UITableViewCell(style:.Default, reuseIdentifier: nil)
		cell.textLabel.text = arrControls[indexPath.row]
		return cell
	}
	
	
	func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!){
		
		let detailView = SADetailViewController(nibName:"SADetailViewController", bundle: nil)
		
		detailView.alertType = indexPath.row	
		
		navigationController.pushViewController(detailView, animated: true)
	}
}
