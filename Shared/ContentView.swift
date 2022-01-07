//
//  ContentView.swift
//  Shared
//
//  Created by ian on 12/23/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>
    
    var servers: [server] = serverlist.beginningList
    var body: some View {
        NavigationView{
            List(servers, id:\.id) { server in
                NavigationLink(destination: detail_view(server: server), label: {
                    HStack{
                        Text(server.name)
                        Spacer()
                        if(server.Up == true){
                            Image(systemName: "wifi").padding(.trailing)
                        }else{
                            Image(systemName: "wifi.slash").padding(.trailing)
                        }
                        
                    }
                })
            }.navigationBarTitle("Server List")
        }
        
        }
    }

 
private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
 
