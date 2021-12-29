//
//  PhoneAndMailViewController.swift
//  Persons List
//
//  Created by Alina Sokolova on 29.12.21.
//

import UIKit

class PhoneAndMailViewController: UIViewController {
    @IBOutlet weak var phoneLabel: UILabel!
    
    @IBOutlet weak var mailLabel: UILabel!
    var person: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(person.name)"
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
