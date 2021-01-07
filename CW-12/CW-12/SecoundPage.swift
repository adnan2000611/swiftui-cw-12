//
//  SecoundPage.swift
//  CW-12
//
//  Created by Mac on 1/7/21.
//

import SwiftUI

struct SecoundPage: View {
    @ObservedObject var env: Env
    @Environment (\.presentationMode) var presentation
    var body: some View {
        VStack{
            TextField("الاسم", text: $env.name)
            TextField("العمر", text: $env.age)
            TextField("الهاتف", text: $env.phone)
            
            Button(action: {
                presentation.wrappedValue.dismiss()
            }, label: {
                    
                Text("موافق")
            })
        }
    }
}

/*struct SecoundPage_Previews: PreviewProvider {
    static var previews: some View {
        SecoundPage()
    }
}*/
