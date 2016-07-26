//
//  ViewController.swift
//  StopWatch
//
//  Created by Diego  Collao on 25-07-16.
//  Copyright © 2016 Undisclosure. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var count = 0
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var playButton: UIBarButtonItem!
    @IBOutlet weak var pauseButton: UIBarButtonItem!
    @IBOutlet weak var stopButton: UIBarButtonItem!
    
    @IBAction func playAction(_ sender: AnyObject) {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.updateTime), userInfo: nil, repeats: true )
    }
    
    @IBAction func stopAction(_ sender: AnyObject) {
        timer.invalidate()
        count = 0
        resultLabel.text = "Start!"
    }
    
    @IBAction func pauseAction(_ sender: AnyObject) {
        timer.invalidate()
    }
    
    func updateTime() {
        count += 1
        resultLabel.text = "\(count)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

