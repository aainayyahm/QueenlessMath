//
//  KangEskrim.swift
//  TrialAndi
//
//  Created by Ayla Ainayyah M on 31/03/23.
//

import SwiftUI

struct KangEskrim: View {
    @State private var nama = false
    var body: some View {
        let kata = nama ? "Halo Ibuu, aku mau beli" : "Mau beli apa, Nak?"
        ZStack {
            Image("Background")
                .resizable()
                .frame(width: 900,height: 500)
                .offset(x:0,y:-50)
            if nama{
                HStack{
                    Image("Andi")
                        .scaleEffect(0.4)
                        .offset(x:400,y:0)
                        .brightness(-0.35)
                    Image("Penjaga Toko")
                        .scaleEffect(0.35)
                        .offset(x:-50,y:0)
                        .scaleEffect(x:-1)
                    
                }.offset(x:0,y:0)}
            else{
                HStack{
                    Image("Andi")
                        .scaleEffect(0.4)
                        .offset(x:400,y:0)
                    
                    Image("Penjaga Toko")
                        .scaleEffect(0.35)
                        .offset(x:-50,y:0)
                        .scaleEffect(x:-1)
                        .brightness(-0.35)
                    
                }.offset(x:0,y:0)}
            HStack{
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth:10)
                    .frame(width:700,height:120)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.yellow)
                            .overlay(
                                Text(kata)
                                //                            .font(.system(size:30))
                                    .font(Font.custom("SFMono-Medium", size: 30))
                            )
                    )
            }.offset(x:0,y:100)
            if nama{
                HStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .frame(width: 130, height: 50)
                        .shadow(color: .black, radius: 10,x:0,y:0)
                        .overlay(
                            Text("Andi")
                                .font(.system(size:25))
                                .fontWeight(.bold))
                        }}
            else{
                HStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .frame(width: 130, height: 50)
                        .shadow(color: .black, radius: 10,x:0,y:0)
                        .overlay(
                            Text("Toko")
                                .font(.system(size:25))
                                .fontWeight(.bold))
                    
                }.offset(x:-245,y:37)}
            
        }.onTapGesture{self.nama = !nama}
    }}

struct KangEskrim_Previews: PreviewProvider {
    static var previews: some View {
        KangEskrim().previewInterfaceOrientation(.landscapeLeft)
    }
}
