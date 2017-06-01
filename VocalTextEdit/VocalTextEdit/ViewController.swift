//
//  ViewController.swift
//  VocalTextEdit
//
//  Created by TAdmin on 5/31/17.
//  Copyright © 2017 Tadmin. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    let speechSynthesizer = NSSpeechSynthesizer()
    
    @IBOutlet var textView: NSTextView!
    @IBAction func speakButtonClicked (_ sender: NSButton){
        print("The speak button was clicked")
        if let contents = textView.string, !contents.isEmpty {
            speechSynthesizer.startSpeaking(contents)
        } else {
            
            speechSynthesizer.startSpeaking("The Document is Empty")
        }
    }
    @IBAction func stopButtonClicked(_ sender: NSButton){
        print("The stop button was clicked")
            speechSynthesizer.stopSpeaking()
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

