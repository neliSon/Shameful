//
//  TaskList.swift
//  Shameful
//
//  Created by Nelson Chow on 2016-06-06.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

import Foundation
import RealmSwift

class TaskList: Object {
    
    // MARK: Properties
    let tasks = List<Task>()
    
}
