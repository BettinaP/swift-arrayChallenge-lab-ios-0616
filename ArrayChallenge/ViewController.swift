//
//  ViewController.swift
//  ArrayChallenge
//
//  Created by James Campagno on 6/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var shoppingList: [String] = []


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let itemsNeeded: [String] = ["Bananas", "Apples", "Eggs", "Rolls"]
        
        let itemQuantities: [Int] = [6,4,12,4]
        
         shoppingList = makeShoppingList(itemsNeeded, quantityOfItems: itemQuantities)
        print(shoppingList)
    }
    

    
    func makeShoppingList(food:[String], quantityOfItems:[Int]) -> [String]{
        //    this reads like the below in objective-C                                                 -(NSArray *)makeShoppingList: (NSArray*)food quantityOfItem:(NSInteger)quantityOfItems{
        //    }
        
        var array:[String] = []
        
        for (index, _) in food.enumerate(){
            
            let mergedItem = "\(index + 1). \(quantityOfItems[index]) \(food[index])"
            array.append(mergedItem)

        }
        
        return array
    }
    
    
}


    