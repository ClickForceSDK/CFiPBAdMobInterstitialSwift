//
//  ViewController.swift
//  CFiPBAdMobInterstitialSwift
//
//  Created by 郭堯彰 on 2018/3/29.
//  Copyright © 2018年 cf. All rights reserved.
//

import UIKit
import iMFAD

class ViewController: UIViewController {
    
    var fullbanner:MFInterstitialView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        fullbanner = MFInterstitialView.init();
        fullbanner?.bannerId = "7358";
        fullbanner?.rootViewController = self;
        fullbanner?.delegate = self;
        fullbanner?.requestFullScreenAD();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController:MFInterstitialViewDelegate{
    
    func onRequestItstAdSuccess() {
        
        fullbanner?.show(); //顯示廣告
    }
    
    func onRequestItstAdFail() {
        
        print("請求廣告失敗")
    }
    
    func onClickItst()  {
        
    }
    
    func onCloseItst()  {
        
    }
}

