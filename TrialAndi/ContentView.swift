//
//  ContentView.swift
//  TrialAndi
//
//  Created by Ayla Ainayyah M on 31/03/23.
//

import SwiftUI

struct ContentView: View {
    @State private var nama = false
    
    var body: some View {
        let kata = nama ? "Kamu mau beli apa?" : "Haloo Ibuu, aku mau beli…"
        ZStack {
            Image("Background")
                .resizable() //Mengubah ukuran gambar
                .frame(width: 900, height: 600) //Mengubah ukuran gambar
                .offset(x:0, y:-90) //Mengubah tata letak
            if nama{
                HStack{
                    Image("Andi")
                        .scaleEffect(0.25) ////Mengubah ukuran gambar dalam bentuk skala
                        .offset(x:-50,y:0)
                        .brightness(-0.35) //Mengubah tingkat kecerahan gambar
                    Image("Penjual Eskrim")
                        .scaleEffect(0.35)
                        .scaleEffect(x:-1) //Flip gambar
                        .offset(x:50,y:-20)
                    
                }.offset(x:0, y: 0)
            }else{
                HStack{
                    Image("Andi")
                        .scaleEffect(0.35)
                        .offset(x:-50,y:0)
                    Image("Penjual Eskrim")
                        .scaleEffect(0.25)
                        .scaleEffect(x:-1) //Flip gambar
                        .offset(x:50,y:-20)
                        .brightness(-0.35)
                    
                }.offset(x:0, y: 0)
            }
            HStack{
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 20)
                    .frame(width: 700,height: 130)
                    .overlay(RoundedRectangle(cornerRadius: 20)
                        .fill(Color.yellow)
                        .overlay(
                            Text(kata)
                                .font(.system(size: 35))
                        )
                    )
            }.offset(x:0,y:100)
            if nama{
                HStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .frame(width: 140,height: 50)
                        .shadow(color:.black, radius: 10, x:0, y:0)
                        .overlay(
                            Text("Penjual Es")
                                .font(.system(size:25))
                                .fontWeight(.bold))
                }.offset(x:230,y:22)
            }else{
                HStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .frame(width: 140,height: 50)
                        .shadow(color:.black, radius: 10, x:0, y:0)
                        .overlay(
                            Text("Andi")
                                .font(.system(size:25))
                                .fontWeight(.bold))
                }.offset(x:-250,y:22)
            }
           
        }.onTapGesture{self.nama = !nama}
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewInterfaceOrientation(.landscapeLeft)
    }
}
