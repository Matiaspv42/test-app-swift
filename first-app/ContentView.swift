//
//  ContentView.swift
//  first-app
//
//  Created by Matías Pinto on 14-03-23.
//

import SwiftUI

struct ContentView: View {
    @State var life = 0
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            VStack{
                Image("Eldrazi")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(10)
                    .clipShape(Circle())
                    .overlay{
                        Circle().stroke(.white, lineWidth: 4)
                    }
                Text("Bienvenido a la mejor APP de comander")
                    .font(.title3).fontWeight(.semibold).foregroundColor(Color.white)
//                Boton instanciado con closure
                Button("+", action: {
                    life = life + 1;
                } )
                Text("Tienes \(life) vidas").foregroundColor(.white)
                Button("-", action: {
                    life = life - 1;
                } )
//                Boton con trailing closure
//                Button("Boton"){
//                    print("Click")
//                }
//                Boton con label view
//                Button {
//                    print("Clickity")
//                } label: {
//                    Image("Eldrazi")
//                }

            }
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
