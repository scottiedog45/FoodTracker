//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Scott OToole on 9/12/18.
//  Copyright © 2018 Scott OToole. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    //MARK: Meal Class tests
    
    func testMealInitializationSucceeds(){
    
        let zeroRatingMeal = Meal.init(name: "Zero", rating: 5, photo: nil)
        XCTAssertNotNil(zeroRatingMeal)
        
        let positiveRatingMeal = Meal.init(name: "Positive", rating: 5, photo: nil)
        XCTAssertNotNil(positiveRatingMeal)
            }
    func testMealInitializationFails(){
        let negativeRatingMeal = Meal.init(name: "Negative", rating: -1, photo: nil)
        XCTAssertNil(negativeRatingMeal)
        
        let emptyStringMeal = Meal.init(name: "", rating: 0, photo: nil)
        XCTAssertNil(emptyStringMeal)
        
        let largeRatingMeal = Meal.init(name: "Large", rating: 6, photo: nil)
        XCTAssertNil(largeRatingMeal)
    }
    
}
