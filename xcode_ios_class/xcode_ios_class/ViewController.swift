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
                let data = data,
                error == nil
            else {
                return
            }
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            //Обработка данных
            let model = try! decoder.decode([BeerDTO].self, from: data)
            print(model)
        }).resume()
        
        
    }
}


struct BeerDTO: Decodable {
    let id: Int
    let name: String
    let tagline: String
    let imageUrl: URL
    
}
