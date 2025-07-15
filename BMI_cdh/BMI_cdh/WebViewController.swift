//
//  WebViewController.swift
//  BMI_cdh
//
//  Created by Induk CS on 2024/11/27.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    @IBAction func goNaver(_ sender: UIButton) {
        guard let url = URL(string: "https://www.chatgpt.com") else { return }
        let request = URLRequest(url: url)
        webView.load(request)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad() // 기본 실행 화면
        
        let velogURLString = "https://velog.io/@dh1126/posts"

        guard let url = URL(string: velogURLString) else {
            return
        }

        let request = URLRequest(url: url)
        webView.load(request)


    }
    

}
