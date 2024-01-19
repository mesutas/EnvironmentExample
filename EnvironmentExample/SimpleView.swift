//
//  SimpleView.swift
//  EnvironmentExample
//
//  Created by asdirector on 19.01.2024.
//

import SwiftUI

struct SimpleView: View {
    @EnvironmentObject var data : DataExample
    var body: some View {
        Text("\(data.text) : \(data.counter)")
            .onTapGesture {
                data.counter += 1
            }
    }
    
    
}


#Preview {
    SimpleView()
        .environmentObject(DataExample())
}
