//
//  ContentView.swift
//  CW-12
//
//  Created by Mac on 1/7/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
            MainView().environmentObject(Env())
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MainView: View {
    @EnvironmentObject var env : Env
    var body: some View {
        VStack{
            Text("مرحبا بك في الكويت تبرمج")
            
            Button(action: {
                env.isShow.toggle()
            }, label: {
                Text("ادخل بياناتك")
            }).sheet(isPresented: $env.isShow, content: {
                SecoundPage(env: env)
            })
            
            if env.name != "" {
                HStack{
                    Spacer()
                    VStack{
                        Text("الاسم : \(env.name)")
                        Text("العمر : \(env.age)")
                        Text("الهاتف : \(env.phone)")
                        
                    }
                }
            }
        }
    }
}
