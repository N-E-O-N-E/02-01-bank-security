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

// 4.1 Überweisung
print("__________________Aufgabe 4.1 ______________________")
print(headerAndMessage)


// 4.2 Transaktion verschlüsseln
print("__________________Aufgabe 4.2 ______________________")

var originalTransaktionText: String = ueberwMessage
var cryptTransaktionText: String = ueberwMessage.replacing("a", with: "😇").replacing("e", with: "😎").replacing("i", with: "👁️").replacing("o", with: "🍄")

print(cryptTransaktionText)



// 4.3 Transaktion entschlüsseln
print("__________________Aufgabe 4.3 ______________________")

var decryptTransaktionText: String = ueberwMessage.replacing("😇", with: "a").replacing("😎", with: "e").replacing("👁️", with: "i").replacing("🍄", with: "o")

print(decryptTransaktionText)


// 4.4 Gültigkeit der Überwesiung
print("__________________Aufgabe 4.4 ______________________")

func pruefeInhalt(){
    if decryptTransaktionText.count > 0 {
        print(">>> Entschlüsselte Nachricht ist gültig.")
    }
    else {
            print(">>> Entschlüsselte Nachricht ist ungültig da sie keinen Inhalt hat")
    }
}

func pruefeLaenge(){
    if decryptTransaktionText.count <=  400 {
        print(">>> Entschlüsselte Nachricht ist nicht zulange! Sie hat aktuell \(decryptTransaktionText.count) Zeichen")
    }
    else {
            print(">>> Entschlüsselte Nachricht ist länger als 400 Zeichen!")
    }
}

func verifMessage() {
    
    if decryptTransaktionText.contains(String(Betrag))
    {
        print("Betrag ist gültig")
        if decryptTransaktionText.contains(String(kontoNr))
        {
            print("Kontonummer ist gültig")
            if decryptTransaktionText.contains(String(iban))
                
            {
                print("IBAN ist gültig")
                if decryptTransaktionText.contains(String(kompleteName))
                {
                    print("Kontoinhaber ist gültig")
                }
            }
        }
    }
}

pruefeInhalt()
pruefeLaenge()
verifMessage()


// 4.5 Erweitere Verschlüsselung
print("__________________Aufgabe 4.5 ______________________")

func crypt() {
    
    let dict = ["1": "4", "2": "6", "0": "3", "9": "5", "a": "j", "g": "k", "w": "b", "h": "u", "t": "p", "l": "d", "f": "r"]
  
    var i: Int = 0
    
    for (i, dict) in dict {
        decryptTransaktionText = decryptTransaktionText.replacingOccurrences(of: i, with: dict)
    }
    
    print(decryptTransaktionText)
}

crypt()


    
    
