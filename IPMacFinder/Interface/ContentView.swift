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
        LazyVGrid(columns: /*@START_MENU_TOKEN@*/[GridItem(.fixed(20))]/*@END_MENU_TOKEN@*/, content: {
            ForEach(ipINFO,id:\.self){ item in
                VStack{
                    HStack{
                        Text("IP:").font(.largeTitle)
                        Text(String(describing:item.ip)).font(.largeTitle)
                       
                    }
                   
                           
                }.frame(width:600,height:45,alignment: .leading)
                VStack{
                    HStack{
                        Text("Network:").font(.largeTitle)
                        Text(String(describing:item.network)).font(.largeTitle)
                    }
                }.frame(width:600,height:45,alignment: .leading)
                    
                VStack{
                    HStack{
                        Text("Version:").font(.largeTitle)
                        Text(String(describing:item.version)).font(.largeTitle)
                    }
                }.frame(width:600,height:45,alignment: .leading)
                VStack{
                    HStack{
                        Text("Currency:").font(.largeTitle)
                        Text(String(describing:item.currency)).font(.largeTitle)
                    }
                }.frame(width:600,height:45,alignment: .leading)
                VStack{
                    HStack{
                        Text("Currency-Name:").font(.largeTitle)
                        Text(String(describing:item.currency_name)).font(.largeTitle)
                    }
                }.frame(width:600,height:45,alignment: .leading)
                VStack{
                    HStack{
                        Text("Country:").font(.largeTitle)
                        Text(String(describing:item.country)).font(.largeTitle)
                    }
                }.frame(width:600,height:45,alignment: .leading)
                VStack{
                    HStack{
                        Text("Country-Code:").font(.largeTitle)
                        Text(String(describing:item.country_code)).font(.largeTitle)
                    }
                }.frame(width:600,height:45,alignment: .leading)
                VStack{
                    HStack{
                        Text("Country-Area:").font(.largeTitle)
                        Text(String(describing:item.country_area)).font(.largeTitle)
                    }
                }.frame(width:600,height:45,alignment: .leading)
                VStack{
                    HStack{
                        Text("Country-Capital:").font(.largeTitle)
                        Text(String(describing:item.country_capital)).font(.largeTitle)
                    }
                }.frame(width:600,height:45,alignment: .leading)
                VStack{
                    HStack{
                        Text("Country-Population:").font(.largeTitle)
                        Text(String(describing:item.country_population)).font(.largeTitle)
                    }
                }.frame(width:600,height:45,alignment: .leading)
                VStack{
                    HStack{
                        Text("Country-Calling-Code:").font(.largeTitle)
                        Text(String(describing:item.country_calling_code)).font(.largeTitle)
                    }
                }.frame(width:600,height:45,alignment: .leading)
                VStack{
                    HStack{
                        Text("Country-Code-ISO3:").font(.largeTitle)
                        Text(String(describing:item.country_code_iso3)).font(.largeTitle)
                    }
                }.frame(width:600,height:45,alignment: .leading)
                VStack{
                    HStack{
                        Text("Country-TLD:").font(.largeTitle)
                        Text(String(describing:item.country_tld)).font(.largeTitle)
                    }
                }.frame(width:600,height:45,alignment: .leading)
                VStack{
                    HStack{
                        Text("Latitude:").font(.largeTitle)
                        Text(String(describing:item.latitude)).font(.largeTitle)
                    }
                }.frame(width:600,height:45,alignment: .leading)
                VStack{
                    HStack{
                        Text("Longitude:").font(.largeTitle)
                        Text(String(describing:item.longitude)).font(.largeTitle)
                    }
                }.frame(width:600,height:45,alignment: .leading)
                VStack{
                    HStack{
                        Text("Region:").font(.largeTitle)
                        Text(String(describing:item.region)).font(.largeTitle)
                    }
                }.frame(width:600,height:45,alignment: .leading)
                VStack{
                    HStack{
                        Text("City:").font(.largeTitle)
                        Text(String(describing:item.city)).font(.largeTitle)
                    }
                }.frame(width:600,height:45,alignment: .leading)
                VStack{
                    HStack{
                        Text("ASN:").font(.largeTitle)
                        Text(String(describing:item.asn)).font(.largeTitle)
                    }
                }.frame(width:600,height:45,alignment: .leading)
                VStack{
                    HStack{
                        Text("Organization:").font(.largeTitle)
                        Text(String(describing:item.org)).font(.largeTitle)
                    }.frame(width:900,height:45,alignment: .leading)
                }.frame(width:600,height:45,alignment: .leading)
            }
        }).onAppear(perform: {
            Task{
                self.ipINFO.append(contentsOf: await viewModel.getIPInfo())
            }
        })
    }
}

#Preview {
    ContentView()
}
