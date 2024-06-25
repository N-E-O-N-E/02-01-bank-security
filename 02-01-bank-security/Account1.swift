//
//  Account1.swift
//  02-01-bank-security
//
//  Created by Markus Wirtz on 25.06.24.
//

import Foundation

// ID und Zeitstempel

let uuid = UUID()

var zeitzone = Calendar.current.timeZone

let unixTimebirthDay: TimeInterval = 1719327763 // Zeit in Sekunden vom 1.1.1970 bis 25.6.24 17:02
let birthDay = Date(timeIntervalSince1970: unixTimebirthDay)


// KontoMetadaten

let nutzerID: UInt = 12345678912345678912
var bonitaet: UInt = 750
var abbuchung: Float = -100.00

// KontoInhaber

let kompleteName: String = "Beate Beispiel"
var age: Int = 39
var isOver18: Bool = true
var city: String = "Berlin"
var street: String = "Breite Straße"
var houseNo: Int = 123
var eMail: String = "beate.beispiel@example.com"
var phone: String = "+49123456789"

// Bank- und Kontodaten

var bankName: String = "Beispielbank Deutschland"
var bankCity: String = "Berlin"
let kontoNr: Int = 12345678
let iban: String = "DE 1234 5678 9101 1213"
var pin: Int = 1234
var ktoGesperrt: Bool = false
var kontostand: Float = 1530.40

