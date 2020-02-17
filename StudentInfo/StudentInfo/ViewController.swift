//
//  ViewController.swift
//  StudentInfo
//
//  Created by DhakaLive on 1/21/20.
//  Copyright © 2020 DhakaLive. All rights reserved.
//

import UIKit

class ViewController: UIViewController, StudentDelegate {
    
    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var lastName: UILabel!
    @IBOutlet weak var mobile: UILabel!
    @IBOutlet weak var address: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Info" {
            let vc = segue.destination as! StudentViewController
            vc.delegate = self
        }
    }

    
    func showStrudentInfo(student: Student) {
        firstName.text = "First Name: \(student.firstName)"
        lastName.text = "Last Name: \(student.lastName)"
        mobile.text = "Mobile: \(student.mobile)"
        address.text = "Address: \(student.address)"
    }

}

