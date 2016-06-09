//
//  MasterViewController.swift
//  Shameful
//
//  Created by Nelson Chow on 2016-06-06.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet weak var scrollView: UIScrollView!
    
    let numberOfPages: CGFloat = 2

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let taskManagerVC = UITableViewController(nibName: "TaskManagerVC", bundle: nil)
        
        // add taskManagerVC as child view and its view as scroll view.
        self.addChildViewController(taskManagerVC)
        self.scrollView.addSubview(taskManagerVC.view)
        taskManagerVC.didMoveToParentViewController(self)
        
        
        let homeVC = UIViewController(nibName: "HomeVC", bundle: nil)
        
        // set home frame's origin as the frame's width.
        var homeFrame = homeVC.view.frame
        homeFrame.origin.x = self.view.frame.size.width
        homeVC.view.frame = homeFrame
        
        // add homeVC as child view and its view as scroll view.
        self.addChildViewController(homeVC)
        self.scrollView.addSubview(homeVC.view)
        homeVC.didMoveToParentViewController(self)
        
        
        // set scroll view content size
        self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width * numberOfPages, self.view.frame.size.height)
        self.scrollView.setContentOffset(CGPointMake(self.view.frame.size.width, 0.0), animated: false)
    }

    // MARK: - General Functions

    
}

