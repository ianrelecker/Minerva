//
//  detail view.swift
//  Minerva
//
//  Created by ian on 12/23/21.
//

import SwiftUI

struct detail_view: View {
    var server: server
    
    var body: some View {
        let string1 = String(server.Online_number)
        NavigationView{
            List () {
                if(server.Up == true){
                    Image(systemName: "wifi")
                }else{
                    Image(systemName: "wifi.slash")
                }
                Text("IP: \n" + server.IP)
                    
                Text("Online: \n" + string1)
            
                Text("Message of the Day: \n" + server.MOTD)
            }.padding(.bottom).navigationBarTitle(server.name)
            
        }
    }
}
    


struct detail_view_Previews: PreviewProvider {
    static var previews: some View {
        detail_view(server: serverlist.beginningList.first!)
    }
}
