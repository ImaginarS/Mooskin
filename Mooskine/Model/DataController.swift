//
//  DataController.swift
//  Mooskine
//
//  Created by Sandra Q on 10/18/20.
//  Copyright © 2020 Udacity. All rights reserved.
//

import Foundation
import CoreData

class DataController {
    let persistentContainer: NSPersistentContainer
    
    var viewContext: NSManagedObjectContext{
        return persistentContainer.viewContext
    }
    
    init(modelNmae: String) {
        persistentContainer = NSPersistentContainer(name: modelNmae)
    }
    
    func load(completion: (() -> Void)? = nil) {
        persistentContainer.loadPersistentStores { (storeDescription, error) in
            guard error == nil else {
                fatalError(error!.localizedDescription)
            }
            completion?()
        }
    }
}
