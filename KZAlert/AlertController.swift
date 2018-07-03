//
//  AlertController.swift
//  KZAlert
//
//  Created by Senim on 7/3/18.
//  Copyright © 2018 Senim. All rights reserved.
//

import UIKit


class AlertController: UIViewController {

  var style: AlertStyle! = nil
  var message
  var senderDelegate: AlertActionsProtocol!
    override func viewDidLoad() {
        super.viewDidLoad()
      
      if style == .GasPaymentStyle {
        let alertView = GasStyleAlertView(frame: CGRect(x: 10, y: 10, width: self.view.frame.width-20, height: self.view.frame.height-20))
          alertView.delegate = self.senderDelegate
        alertView.title.text =
        self.view.addSubview(alertView)

      } else if style == .Topup {
        let alertView = TopupStyleAlertView(frame: CGRect(x: 10, y: 10, width: self.view.frame.width-20, height: self.view.frame.height-20))
        alertView.delegate = self.senderDelegate
        self.view.addSubview(alertView)
      }
      

        // Do any additional setup after loading the view.
    }
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  convenience init(style: AlertStyle, senderDelegate: AlertActionsProtocol) {
//    self.init(title: "", message: "", preferredStyle: .alert)
    self.init()
    self.senderDelegate = senderDelegate
    self.style = style

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
