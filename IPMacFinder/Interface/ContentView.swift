//
//  ContentView.swift
//  IPMacFinder
//
//  Created by Angelos Staboulis on 30/9/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = IPViewModel()
    @State var ipINFO:[IPModel] = []
    var body: some View {
        List(ipINFO,id:\.self){ item in
            ZStack(alignment:.leading){
                HStack{
                    Text("IP:").font(.largeTitle)
                    Text(String(describing:item.ip)).font(.largeTitle)
                }
            }.frame(width:900,height:45,alignment: .leading)
            ZStack(alignment:.leading){
                HStack{
                    Text("Network:").font(.largeTitle)
                    Text(String(describing:item.network)).font(.largeTitle)
                }
            }.frame(width:900,height:45,alignment: .leading)
            ZStack(alignment:.leading){
                HStack{
                    Text("Version:").font(.largeTitle)
                    Text(String(describing:item.version)).font(.largeTitle)
                }
            }.frame(width:900,height:45,alignment: .leading)
            ZStack(alignment:.leading){
                HStack{
                    Text("City:").font(.largeTitle)
                    Text(String(describing:item.city)).font(.largeTitle)
                }
            }.frame(width:900,height:45,alignment: .leading)
            ZStack(alignment:.leading){
                HStack{
                    Text("Region:").font(.largeTitle)
                    Text(String(describing:item.region)).font(.largeTitle)
                }
            }.frame(width:900,height:45,alignment: .leading)
            ZStack(alignment:.leading){
                HStack{
                    Text("Country:").font(.largeTitle)
                    Text(String(describing:item.country_name)).font(.largeTitle)
                }
            }.frame(width:900,height:45,alignment: .leading)
            ZStack(alignment:.leading){
                HStack{
                    Text("Country_Code:").font(.largeTitle)
                    Text(String(describing:item.country_code)).font(.largeTitle)
                }
            }.frame(width:900,height:45,alignment: .leading)
            ZStack(alignment:.leading){
                HStack{
                    Text("Country_Area:").font(.largeTitle)
                    Text(String(describing:item.country_area)).font(.largeTitle)
                }
            }.frame(width:900,height:45,alignment: .leading)
            ZStack(alignment:.leading){
                HStack{
                    Text("Country_TLD:").font(.largeTitle)
                    Text(String(describing:item.country_tld)).font(.largeTitle)
                }
            }.frame(width:900,height:45,alignment: .leading)
            ZStack(alignment:.leading){
                HStack{
                    Text("Capital:").font(.largeTitle)
                    Text(String(describing:item.country_capital)).font(.largeTitle)
                }
            }.frame(width:900,height:45,alignment: .leading)
            ZStack(alignment:.leading){
                HStack{
                    Text("Country_Population:").font(.largeTitle)
                    Text(String(describing:item.country_population)).font(.largeTitle)
                }
            }.frame(width:900,height:45,alignment: .leading)
            ZStack(alignment:.leading){
                HStack{
                    Text("Country_Calling_Code:").font(.largeTitle)
                    Text(String(describing:item.country_calling_code)).font(.largeTitle)
                }
            }.frame(width:900,height:45,alignment: .leading)
            ZStack(alignment:.leading){
                HStack{
                    Text("IN_EU:").font(.largeTitle)
                    Text(String(describing:item.in_eu)).font(.largeTitle)
                }
            }.frame(width:900,height:45,alignment: .leading)
            ZStack(alignment:.leading){
                HStack{
                    Text("Latitude:").font(.largeTitle)
                    Text(String(describing:item.latitude)).font(.largeTitle)
                }
            }.frame(width:900,height:45,alignment: .leading)
            ZStack(alignment:.leading){
                HStack{
                    Text("Longitude:").font(.largeTitle)
                    Text(String(describing:item.longitude)).font(.largeTitle)
                }
            }.frame(width:900,height:45,alignment: .leading)
            ZStack(alignment:.leading){
                HStack{
                    Text("Currency:").font(.largeTitle)
                    Text(String(describing:item.currency)).font(.largeTitle)
                }
            }.frame(width:900,height:45,alignment: .leading)
            ZStack(alignment:.leading){
                HStack{
                    Text("Currency_Name:").font(.largeTitle)
                    Text(String(describing:item.currency_name)).font(.largeTitle)
                }
            }.frame(width:900,height:45,alignment: .leading)
            ZStack(alignment:.leading){
                HStack{
                    Text("Timezone:").font(.largeTitle)
                    Text(String(describing:item.timezone)).font(.largeTitle)
                }
            }.frame(width:900,height:45,alignment: .leading)
            ZStack(alignment:.leading){
                HStack{
                    Text("Languages:").font(.largeTitle)
                    Text(String(describing:item.languages)).font(.largeTitle)
                }
            }.frame(width:900,height:45,alignment: .leading)
           
            ZStack(alignment:.leading){
                HStack{
                    Text("ASN:").font(.largeTitle)
                    Text(String(describing:item.asn)).font(.largeTitle)
                }
            }.frame(width:900,height:45,alignment: .leading)
            ZStack(alignment:.leading){
                HStack{
                    Text("Organization:").font(.largeTitle)
                    Text(String(describing:item.org)).font(.largeTitle)
                }
            }.frame(width:900,height:45,alignment: .leading)
        }.onAppear(perform: {
            Task{
                self.ipINFO.append(contentsOf: await viewModel.getIPInfo())
            }
        })
    }
}

#Preview {
    ContentView()
}
