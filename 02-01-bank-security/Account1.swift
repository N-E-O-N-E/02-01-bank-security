//
//  Account1.swift
//  02-01-bank-security
//
//  Created by Markus Wirtz on 25.06.24.
//

import Foundation

// 2.1 Nutzerdaten anlegen

let kompleteName: String = "Beate Beispiel"
var age: Int = 39
var over18: Bool = true
var city: String = "Berlin"
var street: String = "Breite Straße"
var houseNo: Int = 123
var eMail: String = "beate.beispiel@example.com"
var phone: String = "+49123456789"

// 2.2 Bank- und Kontodaten

var bankName: String = "Beispielbank Deutschland"
var bankCity: String = "Berlin"
let kontoNr: Int = 12345678
let iban: String = "DE 1234 5678 9101 1213"
var pin: Int = 1234
var ktoGesperrt: Bool = false
var kontostand: Float = 1530.40

// 2.3 KontoMetadaten

let nutzerID: UInt = 12345678912345678912
var nutzerBonitaet: UInt = 750
var letzteAbbuchung: Float = -100.00

// 2.4 ID und Zeitstempel

let uuid = UUID()

let startDate = Date(timeIntervalSince1970: 0) // 1.1.1970
let currentDate = Date()
let timeInterval = currentDate.timeIntervalSince(startDate)
let birthDay = Date(timeIntervalSince1970: timeInterval)


// 4.1 Überweisung

var waehrung: Character = "€"
var Betrag: Double = 500.00

var header: String = """
Überweisung
Unverschlüsselt

"""

var ueberwMessage: String = """

Name: \(kompleteName)
Bank: \(bankName), \(bankCity)

Kontonummer: \(kontoNr)
IBAN: \(iban)

Betrag: \(String(format: "%.2f",Betrag))

Verwendungszweck: Für unsere kommende Islandreise -
hier ist mein Beitrag zur gemeinsamen Abenteuerkasse,
damit wir unvergessliche Erlebnisse schaffen können!

"""

var headerAndMessage: String = header + ueberwMessage

