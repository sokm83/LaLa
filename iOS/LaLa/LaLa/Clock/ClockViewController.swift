//
//  ClockViewController.swift
//  LaLa
//
//  Created by Su-gil Lee on 2017. 3. 23..
//  Copyright © 2017년 Sokm83. All rights reserved.
//

import UIKit

// 날씨 참고 : http://rhammer.tistory.com/124

class ClockViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var batteryProgressView: UIProgressView!
    @IBOutlet weak var ampmLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var secLabel: UILabel!
    @IBOutlet weak var weatherIconImageView: UIImageView!
    @IBOutlet weak var weatherLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var windSpeedLabel: UILabel!
    @IBOutlet weak var windWayLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.initUI()
        self.initialize()
    }
    
    func initUI() {
        self.dateLabel.layer.borderColor = UIColor.white.cgColor
        self.dateLabel.layer.cornerRadius = 10
        self.dateLabel.layer.borderWidth = 1.0
        self.dateLabel.layer.masksToBounds = true
    }
    
    func initialize() {
        let directions: [UISwipeGestureRecognizerDirection] = [.right, .left, .up, .down]
        for direction in directions {
            let gesture = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture(gesture:)))
            gesture.direction = direction
            self.view.addGestureRecognizer(gesture)
        }
    }
    
    func respondToSwipeGesture(gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.left: fallthrough
            case UISwipeGestureRecognizerDirection.right:
                self.moveGPSLogger(sender: self)
            default:
                break;
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gpsLogger_segue" {
//            let path = self.tableView.indexPath(for: sender as! MovieCell)
//            let detailVC = segue.destination as? DetailViewController
//            detailVC?.mvo = self.list[path!.row]
            NSLog("prepare [gpsLogger_segue]")
        }
    }
    
    @IBAction func moveGPSLogger(sender : AnyObject) {
        performSegue(withIdentifier: "gpsLogger_segue", sender: self)
    }
    
    @IBAction func unwindToClock(_ segue: UIStoryboardSegue) {
        NSLog("unwindToClock")
    }

}
