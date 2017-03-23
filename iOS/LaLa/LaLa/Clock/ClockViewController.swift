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

//        [dateLabel.layer setBackgroundColor:[[UIColor clearColor] CGColor]];
//        [dateLabel.layer setBorderColor:[[UIColor greenColor] CGColor]];
//        [dateLabel.layer setCornerRadius:10];
//        [dateLabel.layer setBorderWidth:2.0];
//        [dateLabel.layer setMasksToBounds:YES];
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
