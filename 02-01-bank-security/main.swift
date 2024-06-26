//
//  main.swift
//  02-01-bank-security
//
//  Created by Markus Wirtz on 25.06.24.
//

import Foundation


// 3.1 Kontoberechnung durchführen
print("__________________Aufgabe 3.1 ______________________")
// Kontostand erhöhen
kontostand += 250
print(kontostand)
// Kontostand verringern
kontostand -= 120
print(kontostand)
// Kontostand halbieren
kontostand /= 2
print(kontostand)
// Modulo auf das Alter durch 2
var restbetrag = age % 2
print("Modulo: \(restbetrag)")

// 3.2 Typen konvertieren Aufgabe
print("__________________Aufgabe 3.2 ______________________")
var amountInt: Int = 500
var amountDouble: Double = Double(amountInt)
var balanceInCent = kontostand * 100
var acclountNumberString = String(kontoNr)
print("KontoNr als String: \(acclountNumberString)")

// 3.3 Daten gruppieren
print("__________________Aufgabe 3.3 ______________________")

var kontoStatusTuple: (KntNr: Int, KntValue: Double, KntInhaber: String) = (KntNr: kontoNr, KntValue: Double(kontostand), KntInhaber: kompleteName)
      
print("Kontoinhaber: \(kontoStatusTuple.KntInhaber)")
print("Kontonummer: \(kontoStatusTuple.KntNr)")
print("Kontostand: \(kontoStatusTuple.KntValue) EUR")

kontoStatusTuple.KntValue = 1000.00
print("Neuer Kontostand: \(kontoStatusTuple.KntValue) EUR")

// 3.4 Kontogebühren & Zinsen
print("__________________Aufgabe 3.4 ______________________")

// 5 EUR Gebühr
var kntGebuehr: Double = 5.0
kontoStatusTuple.KntValue -= kntGebuehr
print("Kontostand inkl. Gebühren: \(kontoStatusTuple.KntValue)")

// 5% Zinsen
var interestRate: Double = 0.05
var zinsBetrag = kontoStatusTuple.KntValue * interestRate
print("Zinsbetrag Summe: \(zinsBetrag)")
kontoStatusTuple.KntValue += zinsBetrag
print("Kontostand inkl. Zinsbetrag: \(kontoStatusTuple.KntValue)")

// 3.5 Kreditrahmen
print("__________________Aufgabe 3.5 ______________________")

var limitCredit: Int = 1000
var payValue: Double = 123.45

var creditUse = payValue / Double(limitCredit) * 100
print("Kreditrahmen ausgeschöpft: \(String(format: "%.2f", creditUse)) %")
