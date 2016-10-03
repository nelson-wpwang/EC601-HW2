
//
//  FoodTracker_newTests.swift
//  FoodTracker_newTests
//
//  Created by Nelson Wang on 10/2/16.
//  Copyright © 2016 BU ECE WENPENG WANG. All rights reserved.
//

import XCTest
@testable import FoodTracker_new

class FoodTrackerTests: XCTestCase {
    // MARK: FoodTracker Tests
    
    // Tests to confirm that the Meal initializer returns nil when no name or a negative rating is provided.
    func testMealInitialization() {
        // Success case.
        let potentialItem = Meal(name: "Newest meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        // Failure cases.
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating)
    }
}
