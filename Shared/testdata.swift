//
//  testdata.swift
//  Minerva
//
//  Created by ian on 12/23/21.
//

import Foundation
import SwiftUI

struct server: Identifiable{
    let id = UUID()
    let name: String
    let MOTD: String
    let IP: String
    let Online_number: Int
    let Up: Bool
}

struct serverlist{
    static let beginningList = [
        server(name: "Mineplex", MOTD: "icon test this is longer and this is wayyy longer", IP: "us.mineplex.com", Online_number: 69, Up: true),
        server(name: "dope server", MOTD: "icon test this is longer and this is wayyy longer", IP: "this is a server.net", Online_number: 101, Up: false)
    
    ]
}
