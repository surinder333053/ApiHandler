//
//  CountryManager.swift
//  Tapally
//
//  Created by webastral on 10/04/19.
//  Copyright © 2019 webastral. All rights reserved.
//

import UIKit

class CountryManager: NSObject {
    
    static let shared = CountryManager()
    var countryDict = [["flag":"AF","code":"93","CountryName":"Afghanistan"],
                       ["flag":"AL","code":"355","CountryName":"Albania"],
                       ["flag":"DZ","code":"213","CountryName":"Algeria"],
                       ["flag":"AS","code":"1","CountryName":"American Samoa"],
                       ["flag":"AD","code":"376","CountryName":"Andorra"],
                       ["flag":"AO","code":"244","CountryName":"Angola"],
                       ["flag":"AI","code":"1","CountryName":"Anguilla"],
                       ["flag":"AG","code":"1","CountryName":"Antigua and Barbuda"],
                       ["flag":"AR","code":"54","CountryName":"Argentina"],
                       ["flag":"AM","code":"374","CountryName":"Armenia"],
                       ["flag":"AW","code":"297","CountryName":"Aruba"],
                       ["flag":"AU","code":"61","CountryName":"Australia"],
                       ["flag":"AT","code":"43","CountryName":"Austria"],
                       ["flag":"AZ","code":"994","CountryName":"Azerbaijan"],
                       ["flag":"BS","code":"1","CountryName":"Bahamas"],
                       ["flag":"BH","code":"973","CountryName":"Bahrain"],
                       ["flag":"BD","code":"880","CountryName":"Bangladesh"],
                       ["flag":"BB","code":"1","CountryName":"Barbados"],
                       ["flag":"BY","code":"375","CountryName":"Belarus"],
                       ["flag":"BE","code":"32","CountryName":"Belgium"],
                       ["flag":"BZ","code":"501","CountryName":"Belize"],
                       ["flag":"BJ","code":"229","CountryName":"Benin"],
                       ["flag":"BM","code":"1","CountryName":"Bermuda"],
                       ["flag":"BT","code":"975","CountryName":"Bhutan"],
                       ["flag":"BA","code":"387","CountryName":"Bosnia and Herzegovina"],
                       ["flag":"BW","code":"267","CountryName":"Botswana"],
                       ["flag":"BR","code":"55","CountryName":"Brazil"],
                       ["flag":"IO","code":"246","CountryName":"British Indian Ocean Territory"],
                       ["flag":"BG","code":"359","CountryName":"Bulgaria"],
                       ["flag":"BF","code":"226","CountryName":"Burkina Faso"],
                       ["flag":"BI","code":"257","CountryName":"Burundi"],
                       ["flag":"KH","code":"855","CountryName":"Cambodia"],
                       ["flag":"CM","code":"237","CountryName":"Cameroon"],
                       ["flag":"CA","code":"1","CountryName":"Canada"],
                       ["flag":"CV","code":"238","CountryName":"Cabo Verde"],
                       ["flag":"KY","code":"345","CountryName":"Cayman Islands"],
                       ["flag":"CF","code":"236","CountryName":"Central African Republic"],
                       ["flag":"TD","code":"235","CountryName":"Chad"],
                       ["flag":"CL","code":"56","CountryName":"Chile"],
                       ["flag":"CN","code":"86","CountryName":"China"],
                       ["flag":"CX","code":"61","CountryName":"Christmas Island"],
                       ["flag":"CO","code":"57","CountryName":"Colombia"],
                       ["flag":"KM","code":"269","CountryName":"Comoros"],
                       ["flag":"CG","code":"242","CountryName":"Congo"],
                       ["flag":"CK","code":"682","CountryName":"Cook Islands"],
                       ["flag":"CR","code":"506","CountryName":"Costa Rica"],
                       ["flag":"HR","code":"385","CountryName":"Croatia"],
                       ["flag":"CU","code":"53","CountryName":"Cuba"],
                       ["flag":"CY","code":"537","CountryName":"Cyprus"],
                       ["flag":"CZ","code":"420","CountryName":"Czech Republic"],
                       ["flag":"DK","code":"45","CountryName":"Denmark"],
                       ["flag":"DJ","code":"253","CountryName":"Djibouti"],
                       ["flag":"DM","code":"1","CountryName":"Dominica"],
                       ["flag":"DO","code":"1","CountryName":"Dominican Republic"],
                       ["flag":"EC","code":"593","CountryName":"Ecuador"],
                       ["flag":"EG","code":"20","CountryName":"Egypt"],
                       ["flag":"SV","code":"503","CountryName":"El Salvador"],
                       ["flag":"GQ","code":"240","CountryName":"Equatorial Guinea"],
                       ["flag":"ER","code":"291","CountryName":"Eritrea"],
                       ["flag":"EE","code":"372","CountryName":"Estonia"],
                       ["flag":"ET","code":"251","CountryName":"Ethiopia"],
                       ["flag":"FO","code":"298","CountryName":"Faroe Islands"],
                       ["flag":"FJ","code":"679","CountryName":"Fiji"],
                       ["flag":"FI","code":"358","CountryName":"Finland"],
                       ["flag":"FR","code":"33","CountryName":"France"],
                       ["flag":"GF","code":"594","CountryName":"French Guiana"],
                       ["flag":"PF","code":"689","CountryName":"French Polynesia"],
                       ["flag":"GA","code":"241","CountryName":"Gabon"],
                       ["flag":"GM","code":"220","CountryName":"Gambia"],
                       ["flag":"GE","code":"995","CountryName":"Georgia"],
                       ["flag":"DE","code":"49","CountryName":"Germany"],
                       ["flag":"GH","code":"233","CountryName":"Ghana"],
                       ["flag":"GI","code":"350","CountryName":"Gibraltar"],
                       ["flag":"GR","code":"30","CountryName":"Greece"],
                       ["flag":"GL","code":"299","CountryName":"Greenland"],
                       ["flag":"GD","code":"1","CountryName":"Grenada"],
                       ["flag":"GP","code":"590","CountryName":"Guadeloupe"],
                       ["flag":"GU","code":"1","CountryName":"Guam"],
                       ["flag":"GT","code":"502","CountryName":"Guatemala"],
                       ["flag":"GN","code":"224","CountryName":"Guinea"],
                       ["flag":"GW","code":"245","CountryName":"Guinea-Bissau"],
                       ["flag":"GY","code":"595","CountryName":"Guyana"],
                       ["flag":"HT","code":"509","CountryName":"Haiti"],
                       ["flag":"HN","code":"504","CountryName":"Honduras"],
                       ["flag":"HK","code":"852","CountryName":"Hong Kong"],
                       ["flag":"HU","code":"36","CountryName":"Hungary"],
                       ["flag":"IS","code":"354","CountryName":"Iceland"],
                       ["flag":"IN","code":"91","CountryName":"India"],
                       ["flag":"ID","code":"62","CountryName":"Indonesia"],
                       ["flag":"IQ","code":"964","CountryName":"Iraq"],
                       ["flag":"IE","code":"353","CountryName":"Ireland"],
                       ["flag":"IL","code":"972","CountryName":"Israel"],
                       ["flag":"IT","code":"39","CountryName":"Italy"],
                       ["flag":"JM","code":"1","CountryName":"Jamaica"],
                       ["flag":"JP","code":"81","CountryName":"Japan"],
                       ["flag":"JO","code":"962","CountryName":"Jordan"],
                       ["flag":"KZ","code":"77","CountryName":"Kazakhstan"],
                       ["flag":"KE","code":"254","CountryName":"Kenya"],
                       ["flag":"KI","code":"686","CountryName":"Kiribati"],
                       ["flag":"KW","code":"965","CountryName":"Kuwait"],
                       ["flag":"KG","code":"996","CountryName":"Kyrgyzstan"],
                       ["flag":"LV","code":"371","CountryName":"Latvia"],
                       ["flag":"LB","code":"961","CountryName":"Lebanon"],
                       ["flag":"LS","code":"266","CountryName":"Lesotho"],
                       ["flag":"LR","code":"231","CountryName":"Liberia"],
                       ["flag":"LI","code":"423","CountryName":"Liechtenstein"],
                       ["flag":"LT","code":"370","CountryName":"Lithuania"],
                       ["flag":"LU","code":"352","CountryName":"Luxembourg"],
                       ["flag":"MG","code":"261","CountryName":"Madagascar"],
                       ["flag":"MW","code":"265","CountryName":"Malawi"],
                       ["flag":"MY","code":"60","CountryName":"Malaysia"],
                       ["flag":"MV","code":"960","CountryName":"Maldives"],
                       ["flag":"ML","code":"223","CountryName":"Mali"],
                       ["flag":"MT","code":"356","CountryName":"Malta"],
                       ["flag":"MH","code":"692","CountryName":"Marshall Islands"],
                       ["flag":"MQ","code":"596","CountryName":"Martinique"],
                       ["flag":"MR","code":"222","CountryName":"Mauritania"],
                       ["flag":"MU","code":"230","CountryName":"Mauritius"],
                       ["flag":"YT","code":"262","CountryName":"Mayotte"],
                       ["flag":"MX","code":"52","CountryName":"Mexico"],
                       ["flag":"MC","code":"377","CountryName":"Monaco"],
                       ["flag":"MN","code":"976","CountryName":"Mongolia"],
                       ["flag":"ME","code":"382","CountryName":"Montenegro"],
                       ["flag":"MS","code":"1","CountryName":"Montserrat"],
                       ["flag":"MA","code":"212","CountryName":"Morocco"],
                       ["flag":"MM","code":"95","CountryName":"Myanmar"],
                       ["flag":"NA","code":"264","CountryName":"Namibia"],
                       ["flag":"NR","code":"674","CountryName":"Nauru"],
                       ["flag":"NP","code":"977","CountryName":"Nepal"],
                       ["flag":"NL","code":"31","CountryName":"Netherlands"],
                       ["flag":"NC","code":"687","CountryName":"New Caledonia"],
                       ["flag":"NZ","code":"64","CountryName":"New Zealand"],
                       ["flag":"NI","code":"505","CountryName":"Nicaragua"],
                       ["flag":"NE","code":"227","CountryName":"Niger"],
                       ["flag":"NG","code":"234","CountryName":"Nigeria"],
                       ["flag":"NU","code":"683","CountryName":"Niue"],
                       ["flag":"NF","code":"672","CountryName":"Norfolk Island"],
                       ["flag":"MP","code":"1","CountryName":"Northern Mariana Islands"],
                       ["flag":"NO","code":"47","CountryName":"Norway"],
                       ["flag":"OM","code":"968","CountryName":"Oman"],
                       ["flag":"PK","code":"92","CountryName":"Pakistan"],
                       ["flag":"PW","code":"680","CountryName":"Palau"],
                       ["flag":"PA","code":"507","CountryName":"Panama"],
                       ["flag":"PG","code":"675","CountryName":"Papua New Guinea"],
                       ["flag":"PY","code":"595","CountryName":"Paraguay"],
                       ["flag":"PE","code":"51","CountryName":"Peru"],
                       ["flag":"PH","code":"63","CountryName":"Philippines"],
                       ["flag":"PL","code":"48","CountryName":"Poland"],
                       ["flag":"PT","code":"351","CountryName":"Portugal"],
                       ["flag":"PR","code":"1","CountryName":"Puerto Rico"],
                       ["flag":"QA","code":"974","CountryName":"Qatar"],
                       ["flag":"RO","code":"40","CountryName":"Romania"],
                       ["flag":"RW","code":"250","CountryName":"Rwanda"],
                       ["flag":"WS","code":"685","CountryName":"Samoa"],
                       ["flag":"SM","code":"378","CountryName":"San Marino"],
                       ["flag":"SA","code":"966","CountryName":"Saudi Arabia"],
                       ["flag":"SN","code":"221","CountryName":"Senegal"],
                       ["flag":"RS","code":"381","CountryName":"Serbia"],
                       ["flag":"SC","code":"248","CountryName":"Seychelles"],
                       ["flag":"SL","code":"232","CountryName":"Sierra Leone"],
                       ["flag":"SG","code":"65","CountryName":"Singapore"],
                       ["flag":"SK","code":"421","CountryName":"Slovakia"],
                       ["flag":"SI","code":"386","CountryName":"Slovenia"],
                       ["flag":"SB","code":"677","CountryName":"Solomon Islands"],
                       ["flag":"ZA","code":"27","CountryName":"Solomon South Africa"],
                       ["flag":"GS","code":"500","CountryName":"South Georgia and the South Sandwich Islands"],
                       ["flag":"ES","code":"34","CountryName":"Spain"],
                       ["flag":"LK","code":"94","CountryName":"Sri Lanka"],
                       ["flag":"SD","code":"249","CountryName":"Sudan"],
                       ["flag":"SR","code":"597","CountryName":"Suriname"],
                       ["flag":"SZ","code":"268","CountryName":"Swaziland"],
                       ["flag":"SE","code":"46","CountryName":"Sweden"],
                       ["flag":"CH","code":"41","CountryName":"Switzerland"],
                       ["flag":"TJ","code":"992","CountryName":"Tajikistan"],
                       ["flag":"TH","code":"66","CountryName":"Thailand"],
                       ["flag":"TG","code":"228","CountryName":"Togo"],
                       ["flag":"TK","code":"690","CountryName":"Tokelau"],
                       ["flag":"TO","code":"676","CountryName":"Tonga"],
                       ["flag":"TT","code":"1","CountryName":"Trinidad and Tobago"],
                       ["flag":"TN","code":"216","CountryName":"Tunisia"],
                       ["flag":"TR","code":"90","CountryName":"Turkey"],
                       ["flag":"TM","code":"993","CountryName":"Turkmenistan"],
                       ["flag":"TC","code":"1","CountryName":"Turks and Caicos Islands"],
                       ["flag":"TV","code":"688","CountryName":"Tuvalu"],
                       ["flag":"UG","code":"256","CountryName":"Uganda"],
                       ["flag":"UA","code":"380","CountryName":"Ukraine"],
                       ["flag":"AE","code":"971","CountryName":"United Arab Emirates"],
                       ["flag":"GB","code":"44","CountryName":"United Kingdom of Great Britain and Northern Ireland"],
                       ["flag":"US","code":"1","CountryName":"United States of America"],
                       ["flag":"UY","code":"598","CountryName":"Uruguay"],
                       ["flag":"UZ","code":"998","CountryName":"Uzbekistan"],
                       ["flag":"VU","code":"678","CountryName":"Vanuatu"],
                       ["flag":"WF","code":"681","CountryName":"Wallis and Futuna"],
                       ["flag":"YE","code":"967","CountryName":"Yemen"],
                       ["flag":"ZM","code":"260","CountryName":"Zambia"],
                       ["flag":"ZW","code":"263","CountryName":"Zimbabwe"],
                       ["flag":"BO","code":"591","CountryName":"Bolivia"],
                       ["flag":"BN","code":"673","CountryName":"Brunei Darussalam"],
                       ["flag":"CC","code":"61","CountryName":"Cocos Islands"],
                       ["flag":"CD","code":"243","CountryName":"Congo"],
                       ["flag":"CI","code":"225","CountryName":"Cote d'Ivoire"],
                       ["flag":"FK","code":"500","CountryName":"Falkland Islands"],
                       ["flag":"GG","code":"44","CountryName":"Guernsey"],
                       ["flag":"VA","code":"379","CountryName":"Holy See"],
                       ["flag":"IR","code":"98","CountryName":"Iran"],
                       ["flag":"IM","code":"44","CountryName":"Isle of Man"],
                       ["flag":"JE","code":"44","CountryName":"Jersey"],
                       ["flag":"KP","code":"850","CountryName":"Korea (the Democratic People's Republic of)"],
                       ["flag":"KR","code":"82","CountryName":"Korea (the Republic of)"],
                       ["flag":"LA","code":"856","CountryName":"Lao People's Democratic Republic"],
                       ["flag":"LY","code":"218","CountryName":"Libya"],
                       ["flag":"MO","code":"853","CountryName":"Macao"],
                       ["flag":"MK","code":"389","CountryName":"Macedonia (the former Yugoslav Republic of)"],
                       ["flag":"FM","code":"691","CountryName":"Micronesia (Federated States of)"],
                       ["flag":"MD","code":"373","CountryName":"Moldova (the Republic of)"],
                       ["flag":"MZ","code":"258","CountryName":"Mozambique"],
                       ["flag":"PS","code":"970","CountryName":"Palestine"],
                       ["flag":"PN","code":"872","CountryName":"Pitcairn"],
                       ["flag":"RE","code":"262","CountryName":"Réunion"],
                       ["flag":"RU","code":"7","CountryName":"Russian Federation"],
                       ["flag":"BL","code":"590","CountryName":"Saint Barthélemy"],
                       ["flag":"SH","code":"290","CountryName":"Saint Helena, Ascension and Tristan da Cunha"],
                       ["flag":"KN","code":"1","CountryName":"Saint Kitts and Nevis"],
                       ["flag":"LC","code":"1","CountryName":"Saint Lucia"],
                       ["flag":"MF","code":"590","CountryName":"Saint Martin"],
                       ["flag":"PM","code":"508","CountryName":"Saint Pierre and Miquelon"],
                       ["flag":"VC","code":"1","CountryName":"Saint Vincent and the Grenadines"],
                       ["flag":"ST","code":"239","CountryName":"Sao Tome and Principe"],
                       ["flag":"SO","code":"252","CountryName":"Somalia"],
                       ["flag":"SJ","code":"47","CountryName":"Svalbard and Jan Mayen"],
                       ["flag":"SY","code":"963","CountryName":"Syrian Arab Republic"],
                       ["flag":"TW","code":"886","CountryName":"Taiwan"],
                       ["flag":"TZ","code":"255","CountryName":"Tanzania"],
                       ["flag":"TL","code":"670","CountryName":"Timor-Leste"],
                       ["flag":"VE","code":"58","CountryName":"Venezuela"],
                       ["flag":"VN","code":"84","CountryName":"Viet Nam"],
                       ["flag":"VG","code":"284","CountryName":"Virgin Islands (British)"],
                       ["flag":"VI","code":"340","CountryName":"Virgin Islands (U.S.)"]]
    
    
    var countryDictionary  = ["AF":"93",
                              "AL":"355",
                              "DZ":"213",
                              "AS":"1",
                              "AD":"376",
                              "AO":"244",
                              "AI":"1",
                              "AG":"1",
                              "AR":"54",
                              "AM":"374",
                              "AW":"297",
                              "AU":"61",//
        "AT":"43",//
        "AZ":"994",//
        "BS":"1",//
        "BH":"973",//
        "BD":"880",//
        "BB":"1",//
        "BY":"375",//
        "BE":"32",//
        "BZ":"501",//
        "BJ":"229",//
        "BM":"1",//
        "BT":"975",//
        "BA":"387",//
        "BW":"267",//
        "BR":"55",//
        "IO":"246",
        "BG":"359",
        "BF":"226",
        "BI":"257",
        "KH":"855",
        "CM":"237",
        "CA":"1",
        "CV":"238",
        "KY":"345",
        "CF":"236",
        "TD":"235",
        "CL":"56",
        "CN":"86",
        "CX":"61",
        "CO":"57",
        "KM":"269",
        "CG":"242",
        "CK":"682",
        "CR":"506",
        "HR":"385",
        "CU":"53",
        "CY":"537",
        "CZ":"420",
        "DK":"45",
        "DJ":"253",
        "DM":"1",
        "DO":"1",
        "EC":"593",
        "EG":"20",
        "SV":"503",
        "GQ":"240",
        "ER":"291",
        "EE":"372",
        "ET":"251",
        "FO":"298",
        "FJ":"679",
        "FI":"358",
        "FR":"33",
        "GF":"594",
        "PF":"689",
        "GA":"241",
        "GM":"220",
        "GE":"995",
        "DE":"49",
        "GH":"233",
        "GI":"350",
        "GR":"30",
        "GL":"299",
        "GD":"1",
        "GP":"590",
        "GU":"1",
        "GT":"502",
        "GN":"224",
        "GW":"245",
        "GY":"595",
        "HT":"509",
        "HN":"504",
        "HU":"36",
        "IS":"354",
        "IN":"91",
        "ID":"62",
        "IQ":"964",
        "IE":"353",
        "IL":"972",
        "IT":"39",
        "JM":"1",
        "JP":"81",
        "JO":"962",
        "KZ":"77",
        "KE":"254",
        "KI":"686",
        "KW":"965",
        "KG":"996",
        "LV":"371",
        "LB":"961",
        "LS":"266",
        "LR":"231",
        "LI":"423",
        "LT":"370",
        "LU":"352",
        "MG":"261",
        "MW":"265",
        "MY":"60",
        "MV":"960",
        "ML":"223",
        "MT":"356",
        "MH":"692",
        "MQ":"596",
        "MR":"222",
        "MU":"230",
        "YT":"262",
        "MX":"52",
        "MC":"377",
        "MN":"976",
        "ME":"382",
        "MS":"1",
        "MA":"212",
        "MM":"95",
        "NA":"264",
        "NR":"674",
        "NP":"977",
        "NL":"31",
        "AN":"599",
        "NC":"687",
        "NZ":"64",
        "NI":"505",
        "NE":"227",
        "NG":"234",
        "NU":"683",
        "NF":"672",
        "MP":"1",
        "NO":"47",
        "OM":"968",
        "PK":"92",
        "PW":"680",
        "PA":"507",
        "PG":"675",
        "PY":"595",
        "PE":"51",
        "PH":"63",
        "PL":"48",
        "PT":"351",
        "PR":"1",
        "QA":"974",
        "RO":"40",
        "RW":"250",
        "WS":"685",
        "SM":"378",
        "SA":"966",
        "SN":"221",
        "RS":"381",
        "SC":"248",
        "SL":"232",
        "SG":"65",
        "SK":"421",
        "SI":"386",
        "SB":"677",
        "ZA":"27",
        "GS":"500",
        "ES":"34",
        "LK":"94",
        "SD":"249",
        "SR":"597",
        "SZ":"268",
        "SE":"46",
        "CH":"41",
        "TJ":"992",
        "TH":"66",
        "TG":"228",
        "TK":"690",
        "TO":"676",
        "TT":"1",
        "TN":"216",
        "TR":"90",
        "TM":"993",
        "TC":"1",
        "TV":"688",
        "UG":"256",
        "UA":"380",
        "AE":"971",
        "GB":"44",
        "US":"1",
        "UY":"598",
        "UZ":"998",
        "VU":"678",
        "WF":"681",
        "YE":"967",
        "ZM":"260",
        "ZW":"263",
        "BO":"591",
        "BN":"673",
        "CC":"61",
        "CD":"243",
        "CI":"225",
        "FK":"500",
        "GG":"44",
        "VA":"379",
        "HK":"852",
        "IR":"98",
        "IM":"44",
        "JE":"44",
        "KP":"850",
        "KR":"82",
        "LA":"856",
        "LY":"218",
        "MO":"853",
        "MK":"389",
        "FM":"691",
        "MD":"373",
        "MZ":"258",
        "PS":"970",
        "PN":"872",
        "RE":"262",
        "RU":"7",
        "BL":"590",
        "SH":"290",
        "KN":"1",
        "LC":"1",
        "MF":"590",
        "PM":"508",
        "VC":"1",
        "ST":"239",
        "SO":"252",
        "SJ":"47",
        "SY":"963",
        "TW":"886",
        "TZ":"255",
        "TL":"670",
        "VE":"58",
        "VN":"84",
        "VG":"284",
        "VI":"340"]
    
    
    
    func flag(country:String) -> String {
        let base : UInt32 = 127397
        var s = ""
        for v in country.unicodeScalars {
            s.unicodeScalars.append(UnicodeScalar(base + v.value)!)
        }
        return String(s)
    }

}