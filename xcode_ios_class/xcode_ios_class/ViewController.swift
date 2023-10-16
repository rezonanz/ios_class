//
//  ViewController.swift
//  xcode_ios_class
//
//  Created by Rezo on 09.10.2023.
//
// hello!
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        let url: URL = URL(string: "https://api.punkapi.com/v2/beers")!
        URLSession.shared.dataTask(with: url, completionHandler: {data, response, error in
            guard
                let data = data, // , - AND
                let response = response,
                error == nil
            else {
                return
            }
            let str = String(data: data, encoding: .utf8)
            print("Полученные данные: \(str ?? "")")
        }).resume()
        
        
    }
}
