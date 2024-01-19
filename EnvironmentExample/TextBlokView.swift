//
//  TextBlokView.swift
//  EnvironmentExample
//
//  Created by asdirector on 19.01.2024.
//

import SwiftUI

struct TextBlokView: View {
    @EnvironmentObject var data : DataExample
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 200, height: 60)
                .foregroundColor(.green)
                .cornerRadius(9)
            Text("\(data.text) : \(data.counter)")
                .foregroundStyle(.white)
        }
        .onTapGesture {
            data.counter += 1
        }
     
    }
}

#Preview {
    TextBlokView()
        .environmentObject(DataExample())
}
