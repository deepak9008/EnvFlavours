//
//  Constant.swift
//  Test
//
//  Created by Naveen on 16/05/18.
//  Copyright © 2018 Naveen. All rights reserved.
//

import Foundation

var BaseUrl = ""
var Protocol = ""
var key = ""


enum EnvType {
    case QA
    case UAT
    case PROD
}


class EnvConfigHelper {
    
    class func handleEnvironmentVariables(envType:EnvType){
        switch envType {
            
        case .QA:
            BaseUrl = "qa.baseurl.com"
            Protocol = "https_QA"
            key = "QA_KeY"

        case .UAT:
            BaseUrl = "uat.baseurl.com"
            Protocol = "https_UAT"
            key = "UAT_KeY"
        
        case .PROD:
            BaseUrl = "prod.baseurl.com"
            Protocol = "https_PROD"
            key = "PROD_KeY"
        }
    }
}
