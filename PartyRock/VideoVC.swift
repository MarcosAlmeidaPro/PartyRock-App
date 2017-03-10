//
//  VideoVC.swift
//  PartyRock
//
//  Created by MK3 on 21/11/16.
//  Copyright © 2016 Nest Code. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var musicLbl: UILabel!
    
   
    @IBAction func backPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }
    
    private var _videoPlay: PartyModel!
    
    var videoPlay: PartyModel {
        get {
            return _videoPlay
        } set {
            _videoPlay = newValue
        }
        
    }
    
//    private var _musicName: PartyModel!
//    
//    var musicName: PartyModel {
//        get {
//            return _musicName
//        } set {
//            _musicName = newValue
//        }
//        
//    }
//    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        musicLbl.text = videoPlay.videoTitle
        webView.loadHTMLString(videoPlay.videoUrl, baseURL: nil)
        webView.sizeToFit()
       
        
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
