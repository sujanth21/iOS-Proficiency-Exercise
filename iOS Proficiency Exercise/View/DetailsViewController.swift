//
//  DetailsViewController.swift
//  iOS Proficiency Exercise
//
//  Created by Sujanth Sebamalaithasan on 3/4/18.
//  Copyright © 2018 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var selection: String!
    @IBOutlet private weak var detailsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        detailsLabel.text = selection
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
