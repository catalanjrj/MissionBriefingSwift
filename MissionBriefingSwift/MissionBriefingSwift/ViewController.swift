//
//  ViewController.swift
//  MissionBriefingSwift
//
//  Created by Jorge Catalan on 5/10/16.
//  Copyright © 2016 Jorge Catalan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var agentName: UITextField!
    @IBOutlet var agentPassword: UITextField!
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var missiongBriefingText: UITextView!
        @IBOutlet var TIYLogo: UIImageView!
    
    @IBAction func authenticateButton(sender: AnyObject) {
        if  agentName .isFirstResponder() {
            agentName .resignFirstResponder()
        }
        if agentName != "" && agentPassword != ""{
       let lastName = agentName.text?.componentsSeparatedByString(" ").last
            
            greetingLabel.text = "Good Evening, Agent \(lastName!)"
            
            
            missiongBriefingText.text = "This mission will be an arduous one, fraught with peril. You will cover much strange and unfamiliar territory. Should you choose to accept this mission, Agent %@, you will certainly be disavowed, but you will be doing your country a great service. This message will self destruct in 5 seconds."
            let authenticatedBackground = UIColor.greenColor()
            
            view.backgroundColor = authenticatedBackground
        }
        else{
            let accesDeniedBackgroundColor = UIColor.redColor()
            view.backgroundColor = accesDeniedBackgroundColor
            
        }
    
    
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        agentName.text = ""
        greetingLabel.text = ""
        missiongBriefingText.text = ""
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

