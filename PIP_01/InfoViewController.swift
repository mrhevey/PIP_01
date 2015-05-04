//
//  InfoViewController.swift
//  PIP_01
//
//  Created by mhevey on 5/3/15.
//  Copyright (c) 2015 Rock Valley College. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBAction func btnBack(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(false, completion: nil)
    }
    
    @IBOutlet weak var webview: UIWebView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        LoadLocalPDF()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func LoadLocalPDF()
    {
        webview.loadLocalPDF("ApplicationHelp")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


extension UIWebView {
    func loadLocalPDF(name:String!) {
        //load local pdf
        let termsPath:String? = NSBundle.mainBundle().pathForResource(name, ofType: "pdf")!
        let url = NSURL(fileURLWithPath: termsPath!)
        let pdfRequest = NSURLRequest(URL: url!)
        self.loadRequest(pdfRequest)
    }
    func loadExternalPDF(name:String!){
        let url = NSURL(string: name)
        let request = NSURLRequest(URL:url!)
        self.scalesPageToFit = true
        self.loadRequest(request)
    }
}



//Extension InfoViewController : UIWebView {
//    
//    func loadLocalPDF(name:String!) { //load local pdf
//        let termsPath:String? =
//        NSBundle.mainBundle().pathForResource(name, ofType: "pdf")! let url = NSURL(fileURLWithPath: termsPath!)
//        let pdfRequest = NSURLRequest(URL: url!) self.loadRequest(pdfRequest)
//    }
//    func loadExternalPDF(name:String!){
//        let url = NSURL(string: name)
//        let request = NSURLRequest(URL:url!) self.scalesPageToFit = true self.loadRequest(request)
//    }
//
//}

//
//Extends InfoViewController UIWebView {
//    func loadLocalPDF(name:String!) { //load local pdf
//    let termsPath:String? =
//    NSBundle.mainBundle().pathForResource(name, ofType: "pdf")! let url = NSURL(fileURLWithPath: termsPath!)
//    let pdfRequest = NSURLRequest(URL: url!) self.loadRequest(pdfRequest)
//    }
//    func loadExternalPDF(name:String!){
//    let url = NSURL(string: name)
//    let request = NSURLRequest(URL:url!) self.scalesPageToFit = true self.loadRequest(request)
//    }
//}
