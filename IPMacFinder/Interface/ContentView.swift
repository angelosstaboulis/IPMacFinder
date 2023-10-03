//
//  ContentView.swift
//  IPMacFinder
//
//  Created by Angelos Staboulis on 30/9/23.
//

import SwiftUI
import MapKit
struct ContentView: View {
    @StateObject var viewModel = IPViewModel()
    @State var ipINFO:[IPModel] = []
    @State private var coordinates = CLLocationCoordinate2D()
    var body: some View {
        ZStack{
            ForEach(ipINFO,id:\.self) { info in
                VStack{
                    Map{
                        Marker("IP-Place",coordinate: coordinates)
                    }.onAppear(perform: {
                        coordinates = CLLocationCoordinate2D(latitude: info.latitude, longitude: info.longitude)
                    })
                    
                }.position(x:0,y:600)
                    .frame(width: (NSScreen.main?.frame.width)! - 600,height:(NSScreen.main?.frame.height)!-100,alignment: .leading)
                VStack{
                    ZStack(alignment: .leading){
                        HStack{
                            Text("IP:").font(.largeTitle)
                            Text(info.ip).font(.largeTitle)
                        }
                    }.frame(width:550,height:60,alignment: .leading)
                    ZStack(alignment: .leading){
                        HStack{
                            Text("Network:").font(.largeTitle)
                            Text(info.network).font(.largeTitle)
                        }
                    }.frame(width:550,height:60,alignment: .leading)
                    ZStack(alignment: .leading){
                        HStack{
                            Text("Continent-Code:").font(.largeTitle)
                            Text(info.continent_code).font(.largeTitle)
                        }
                    }.frame(width:550,height:60,alignment: .leading)
                    ZStack(alignment: .leading){
                        HStack{
                            Text("Languages:").font(.largeTitle)
                            Text(info.languages).font(.largeTitle)
                        }
                    }.frame(width:550,height:60,alignment: .leading)
                    ZStack(alignment: .leading){
                        HStack{
                            Text("Country:").font(.largeTitle)
                            Text(info.country).font(.largeTitle)
                        }
                    }.frame(width:550,height:60,alignment: .leading)
                    ZStack(alignment: .leading){
                        HStack{
                            Text("Country-Population:").font(.largeTitle)
                            Text(String(describing:info.country_population)).font(.largeTitle)
                        }
                    }.frame(width:550,height:60,alignment: .leading)
                    ZStack(alignment: .leading){
                        HStack{
                            Text("Country-Capital:").font(.largeTitle)
                            Text(info.country_capital).font(.largeTitle)
                        }
                    }.frame(width:550,height:60,alignment: .leading)
                    ZStack(alignment: .leading){
                        HStack{
                            Text("Country-TLD:").font(.largeTitle)
                            Text(info.country_tld).font(.largeTitle)
                        }
                    }.frame(width:550,height:60,alignment: .leading)
                    ZStack(alignment: .leading){
                        HStack{
                            Text("Country-Calling-Code:").font(.largeTitle)
                            Text(info.country_calling_code).font(.largeTitle)
                        }
                    }.frame(width:550,height:60,alignment: .leading)
                    ZStack(alignment: .leading){
                        HStack{
                            Text("City:").font(.largeTitle)
                            Text(info.city).font(.largeTitle)
                        }
                    }.frame(width:550,height:60,alignment: .leading)
                    ZStack(alignment: .leading){
                        HStack{
                            Text("Timezone:").font(.largeTitle)
                            Text(info.timezone).font(.largeTitle)
                        }
                    }.frame(width:550,height:60,alignment: .leading)
                    ZStack(alignment: .leading){
                        HStack{
                            Text("Latitude:").font(.largeTitle)
                            Text(String(describing:info.latitude)).font(.largeTitle)
                        }
                    }.frame(width:550,height:60,alignment: .leading)
                    ZStack(alignment: .leading){
                        HStack{
                            Text("Longitude:").font(.largeTitle)
                            Text(String(describing:info.longitude)).font(.largeTitle)
                        }
                    }.frame(width:550,height:60,alignment: .leading)
                    ZStack(alignment: .leading){
                        HStack{
                            Text("Currency:").font(.largeTitle)
                            Text(info.currency).font(.largeTitle)
                        }
                    }.frame(width:550,height:60,alignment: .leading)
                    ZStack(alignment: .leading){
                        HStack{
                            Text("ASN:").font(.largeTitle)
                            Text(info.asn).font(.largeTitle)
                        }
                    }.frame(width:550,height:60,alignment: .leading)
                    ZStack(alignment: .leading){
                        HStack{
                                Text("Organization:").font(.largeTitle)
                                Text(info.org).font(.largeTitle)
                        }.frame(width:950,height:60,alignment: .leading)
                    }.frame(width:550,height:60,alignment: .leading)
                }.position(x:1200,y:570)
                    .frame(width: (NSScreen.main?.frame.width)! - 400,height:(NSScreen.main?.frame.height)!-100,alignment: .leading)
                
            }
            
            
        }.onAppear(perform: {
            Task.init{
                self.ipINFO.append(contentsOf: await viewModel.getIPInfo())
                
            }
        })
    }
}

#Preview {
    ContentView()
}
