//
//  ViewController.swift
//  fakemobilet
//
//  Created by Kamil Krzysztof on 01/08/2020.
//  Copyright © 2020 Kamil Natonek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let number = Int.random(in: 100 ... 999)
    let date = Date().addingTimeInterval(5*60)
    let df = DateFormatter()
   
    
    @IBOutlet var transactionNumber: UILabel!
    @IBOutlet var ticketNumber: UILabel!
    @IBOutlet var expDate: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        ticketNumber.text = "KRK 26875\(Int.random(in: 100 ... 999))"
        transactionNumber.text="20300020121159\(Int.random(in: 10000 ... 99999))"
        df.dateFormat = "dd.MM.yyyy HH:mm"
        let dateString = df.string(from: date)
        
        expDate.text = "\(dateString)"
               print(dateString)
        
    }


}

