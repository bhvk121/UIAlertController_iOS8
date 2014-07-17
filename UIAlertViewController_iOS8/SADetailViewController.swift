//
//  SADetailViewController.swift
//  UIAlertViewController_iOS8
//
//  Created by Bhavik Shah on 16/07/14.
//  Copyright (c) 2014 solutionAnalysts. All rights reserved.
//

import UIKit

class SADetailViewController: UIViewController {
	
	var alertType : Int = 0
	var alert : UIAlertController?
	
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }

    override func viewDidLoad() {
        super.viewDidLoad()
		        // Do any additional setup after loading the view.
    }
	
	override func viewDidAppear(animated: Bool){
		configureView()
	}

	
	func configureView(){
		
		switch alertType{
		case 0 :
				alert = UIAlertController(title: "Your Title", message: "Your Message", preferredStyle: .Alert)
		case 1 :
			
				alert = UIAlertController(title: "Your Title", message: "Your Message", preferredStyle: .Alert)
				
				let Yes = UIAlertAction(title: "Yes", style: .Default, handler: {(alertAction: UIAlertAction!) in self.alert!.dismissModalViewControllerAnimated(true)})
				
				let No = UIAlertAction(title: "No", style: .Default, handler:{(alertAction: UIAlertAction!) in self.alert!.dismissModalViewControllerAnimated(true)})
				
				alert!.addAction(Yes)
				alert!.addAction(No)
			
		case 2 :
			
			alert = UIAlertController(title: "Your Title", message: "Your Message", preferredStyle: .ActionSheet)
			
			let Yes = UIAlertAction(title: "Yes", style: .Default, handler: {(alertAction: UIAlertAction!) in self.alert!.dismissModalViewControllerAnimated(true)})
			
			let No = UIAlertAction(title: "No", style: .Default, handler:{(alertAction: UIAlertAction!) in self.alert!.dismissModalViewControllerAnimated(true)})
			
			alert!.addAction(Yes)
			alert!.addAction(No)
			
		case 3 :
			
			alert = UIAlertController(title: "Your Title", message: "Your Message", preferredStyle: .Alert)
			
			let Yes = UIAlertAction(title: "Yes", style: .Default, handler: {(alertAction: UIAlertAction!) in self.alert!.dismissModalViewControllerAnimated(true)})
			
			let No = UIAlertAction(title: "No", style: .Default, handler:{(alertAction: UIAlertAction!) in self.alert!.dismissModalViewControllerAnimated(true)})
			
			alert!.addAction(Yes)
			alert!.addAction(No)
			
			alert!.addTextFieldWithConfigurationHandler({(textField: UITextField!) in textField.placeholder = "UserName"})
			alert!.addTextFieldWithConfigurationHandler({(textField: UITextField!) in textField.placeholder = "Password"; textField.secureTextEntry = true})
		
			
		default:
			nil
		}
		
		self.presentViewController(alert!, animated: true, completion: nil)
		NSTimer.scheduledTimerWithTimeInterval(5.5, target: self, selector: Selector("PopViewController"), userInfo: nil, repeats: false)
		
	}

	func PopViewController(){
		alert!.dismissViewControllerAnimated(true, completion: nil)
		navigationController.popViewControllerAnimated(true)

		
	}
	
	
	
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
