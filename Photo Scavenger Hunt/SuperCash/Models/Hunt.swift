//
//  ScavengerHunt.swift
//  Photo Scavenger Hunt
//
//  Created by Camila Aichele on 2/8/23.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    let price: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String, price: String) {
        self.title = title
        self.description = description
        self.price = price
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Netflix",
                description: "can watch movies and tv shows", price: "$20"),
            Task(title: "Hulu",
                description: "can watch movies and tv shows", price: "$10"),
            Task(title: "Sephora",
                description: "access to makeup and self care", price: "$5")
        ]
    }
}
