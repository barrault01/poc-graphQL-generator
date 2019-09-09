//
//  ViewController.swift
//  StarWarsQL
//
//  Created by Antoine Barrault on 9/5/19.
//  Copyright © 2019 Antoine Barrault. All rights reserved.
//

import UIKit
import GraphQLGerator
import Apollo

class Apollo {
  static let shared = Apollo()
  private(set) lazy var client = ApolloClient(url: URL(string: "http://localhost:8080/graphql")!)
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let query = HeroNameQuery(episode: .empire)
        let _ = Apollo.shared.client.fetch(query: query) { result, error in
            if let name = result?.data?.hero?.name {
                print(name)
            }
        }
    }
}
