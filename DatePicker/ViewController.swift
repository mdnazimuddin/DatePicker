//
//  ViewController.swift
//  DatePicker
//
//  Created by iMac on 4/24/18.
//  Copyright © 2018 iNazim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateField: UITextField!
    let picker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        creatDatePicker()
    }
    func creatDatePicker(){
        // toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        // done
        let done = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePress))
        toolbar.setItems([done], animated: false)
        dateField.inputAccessoryView = toolbar
        dateField.inputView = picker
        
        // formate picker
        picker.datePickerMode = .date
        
    }
    @objc func donePress(){
        //formate date
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        let dateFormate = formatter.string(from: picker.date)
        dateField.text = "\(dateFormate)"
        self.view.endEditing(true)
    }



}

