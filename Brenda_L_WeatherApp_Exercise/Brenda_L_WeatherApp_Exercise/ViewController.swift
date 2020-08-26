//
//  ViewController.swift
//  Brenda_L_WeatherApp_Exercise
//
//  Created by Brenda Leyva on 8/25/20.
//  Copyright © 2020 Brenda Leyva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let url = NSURL(string: "https//api.darksky.net/forecast/ae58c5fa7285b492f6a553d200018d9e/42.5917,88.4334") {
            if NSData(contentsOf: url as URL) != nil{
                do {
                    let parsed = try JSONSerialization.jsonObject(with: data as Data, options: JSONSerialization.ReadingOptions.allowFragments)
                    as! [String:AnyObject]
                }
                    let newDict = parsed

                    print(newDict["currently"]!["summary"] as Any)
                    print(newDict["currently"]!["temperature"] as Any)
                    print(newDict["currently"]!["dewPoint"] as Any)

                    self.currentTemp.text =
                        "\(newDict["currently"]!["temperature"]!!)"
                        "\(newDict["currently"]!["summary"]!!)"
                        "\(newDict["currently"]!["dewPoint"]!!)"
}
            catch let error as NSError {
                print("A JSON parsithng error occurred, here are the details:\n \(error)")
            }
        }
        
    @IBOutlet var currentTemp: UILabel!]
    
    @IBOutlet var currentsummer: UILabel!
    
    @IBOutlet var currentDewPoint: UILabel!
}










}
