//
//  AddRegistrationTableViewController.swift
//  Reservation App
//
//  Created by abdullah on 12.03.2024.
//

import UIKit

class AddRegistrationTableViewController: UITableViewController {

    // MARK: - UI Elements
    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    
    @IBOutlet var checkInDateLabel: UILabel!
    @IBOutlet var checkInDatePicker: UIDatePicker!
    
    @IBOutlet var checkOutDateLabel: UILabel!
    
    @IBOutlet var checkOutDatePicker: UIDatePicker!
    
    // MARK: - Preportties
    let ONE_DAY: Double = 24 * 60 * 60
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        dateSettings()
    }
    
    // MARK: - Functions
    
    func updateDateViews() {
        
      
        checkOutDatePicker.minimumDate = checkInDatePicker.date.addingTimeInterval(ONE_DAY)
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = .medium
        
        checkInDateLabel.text = dateFormatter.string(from: checkInDatePicker.date)
        
        checkOutDateLabel.text = dateFormatter.string(from: checkOutDatePicker.date)
        
    }
    
    func dateSettings() {
        
        let midnightToday = Calendar.current.startOfDay(for: Date())
        
        checkInDatePicker.minimumDate = midnightToday
        checkInDatePicker.date = midnightToday
                
    }
    
    
    
    
    // MARK: - Actions
    @IBAction func doneButtonTapped(_ button: UIBarButtonItem)
    {
        let firstName = firstNameTextField.text!
        let lastName = lastNameTextField.text!
        let email = emailTextField.text!
        
    }
    @IBAction func datePickerValueChanged(_ picker: UIDatePicker) {
        updateDateViews()
        
    }
    


    
    


   

}
