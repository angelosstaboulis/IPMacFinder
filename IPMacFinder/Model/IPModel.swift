//
//  IPModel.swift
//  IPMacFinder
//
//  Created by Angelos Staboulis on 30/9/23.
//

import Foundation
struct IPModel:Identifiable,Hashable{
    var id:UUID
    var ip:String
    var network:String
    var version:String
    var city:String
    var region:String
    var region_code:String
    var country:String
    var country_name:String
    var country_code:String
    var country_code_iso3:String
    var country_capital:String
    var country_tld:String
    var continent_code:String
    var in_eu:Bool
    var postal:String
    var latitude:Double
    var longitude:Double
    var timezone:String
    var utc_offset:String
    var country_calling_code:String
    var currency:String
    var currency_name:String
    var languages:String
    var country_area:Double
    var country_population:Int
    var asn:String
    var org:String
}
