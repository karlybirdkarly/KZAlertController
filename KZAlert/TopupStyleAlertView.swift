//
//  TopupStyleAlertView.swift
//  KZAlert
//
//  Created by Senim on 7/3/18.
//  Copyright © 2018 Senim. All rights reserved.
//

import UIKit

class TopupStyleAlertView: UIView {
  @IBOutlet var contentView: UIView!
  @IBOutlet weak var thanksButton: UIButton!
  var delegate: AlertActionsProtocol?
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.commonInit()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    self.commonInit()
  }
  
  func commonInit() {
    Bundle.main.loadNibNamed("TopupStyleAlert", owner: self, options: nil)
    contentView.frame = self.bounds
    contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    addSubview(contentView)
    
    
  }
  
  @IBAction func onOk(_ sender: Any) {
    delegate?.whenThanksTapped()
  }
  
  

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
