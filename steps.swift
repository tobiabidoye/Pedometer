//
//  steps.swift
//  pedometer
//
//  Created by Tobi Abidoye on 12/29/23.
//

import Foundation

struct Step: Identifiable{
    let id =  UUID()
    let count: Int
    let date : Date
}
