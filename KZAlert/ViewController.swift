//
//  ViewController.swift
//  KZAlert
//
//  Created by Senim on 7/3/18.
//  Copyright © 2018 Senim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, AlertActionsProtocol {

  var alert: AlertController?
  
  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view, typically from a nib.
  }

  override func viewDidAppear(_ animated: Bool) {

  }
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  @IBAction func onTap(_ sender: Any) {
//    let alert = UIAlertController(title: "HEEEY", message: nil, preferredStyle: .alert)

    let alert = AlertController(style: .GasPaymentStyle, senderDelegate: self)
    self.alert = alert
    self.present(alert, animated: true, completion: nil)

  }
  
  @IBAction func onTap2(_ sender: Any) {
    //    let alert = UIAlertController(title: "HEEEY", message: nil, preferredStyle: .alert)
    
    let alert = AlertController(style: .Topup, senderDelegate: self)
    self.alert = alert
    self.present(alert, animated: true, completion: nil)
    
  }
  
  func whenOkTapped() {
    print("Ok TApped")
    self.alert?.dismiss(animated: true, completion: nil)
    
  }

  func whenThanksTapped() {
    print("Thanks TApped")
    self.alert?.dismiss(animated: true, completion: nil)

  }

}

