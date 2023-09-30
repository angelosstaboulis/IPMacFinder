//
//  IPViewModel.swift
//  IPMacFinder
//
//  Created by Angelos Staboulis on 30/9/23.
//

import Foundation
import Alamofire
import SwiftyJSON
class IPViewModel:ObservableObject{
    @Published var ipINFO:[IPModel] = []
    func getIPInfo() async -> [IPModel]{
        return await withCheckedContinuation { continuation in
            let request = URLRequest(url:URL(string: "https://ipapi.co/json/")!)
            AF.request(request).responseData { dataResponse in
                do{
                    let json = try JSON(data: dataResponse.data!)
                    self.ipINFO.append(IPModel(id: UUID(), ip: json["ip"].stringValue, network: json["network"].stringValue, version: json["version"].stringValue, city: json["city"].stringValue, region: json["region"].stringValue, region_code: json["region_code"].stringValue, country: json["country"].stringValue, country_name: json["country_name"].stringValue, country_code: json["country_code"].stringValue, country_code_iso3: json["country_code_iso3"].stringValue, country_capital: json["country_capital"].stringValue, country_tld: json["country_tld"].stringValue, continent_code: json["continent_code"].stringValue, in_eu: json["in_eu"].boolValue, postal: json["postal"].stringValue, latitude: json["latitude"].doubleValue, longitude: json["longitude"].doubleValue, timezone: json["timezone"].stringValue, utc_offset: json["utc_offset"].stringValue, country_calling_code: json["country_calling_code"].stringValue, currency: json["currency"].stringValue, currency_name: json["currency_name"].stringValue, languages: json["languages"].stringValue, country_area: json["country_area"].doubleValue, country_population: json["country_population"].intValue, asn: json["asn"].stringValue, org: json["org"].stringValue))
                    continuation.resume(returning: self.ipINFO)
                    
                }catch{
                    
                }
            }
        }
    }
}
