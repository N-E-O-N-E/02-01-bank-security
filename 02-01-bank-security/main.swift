//
//  main.swift
//  02-01-bank-security
//
//  Created by Markus Wirtz on 25.06.24.
//

import Foundation

/*
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
*/

/*
// 3.2 Typen konvertieren Aufgabe
print("__________________Aufgabe 3.2 ______________________")
var amountInt: Int = 500
var amountDouble: Double = Double(amountInt)
var balanceInCent = kontostand * 100
var acclountNumberString = String(kontoNr)
print("KontoNr als String: \(acclountNumberString)")
*/

/*
// 3.3 Daten gruppieren
print("__________________Aufgabe 3.3 ______________________")

var kontoStatusTuple: (KntNr: Int, KntValue: Double, KntInhaber: String) = (KntNr: kontoNr, KntValue: Double(kontostand), KntInhaber: kompleteName)
      
print("Kontoinhaber: \(kontoStatusTuple.KntInhaber)")
print("Kontonummer: \(kontoStatusTuple.KntNr)")
print("Kontostand: \(kontoStatusTuple.KntValue) EUR")

kontoStatusTuple.KntValue = 1000.00
print("Neuer Kontostand: \(kontoStatusTuple.KntValue) EUR")
*/

/*

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
*/

/*
// 3.5 Kreditrahmen
print("__________________Aufgabe 3.5 ______________________")

var limitCredit: Int = 1000
var payValue: Double = 123.45

var creditUse = payValue / Double(limitCredit) * 100
print("Kreditrahmen ausgeschöpft: \(String(format: "%.2f", creditUse)) %")
*/
 
/*
// 4.1 Überweisung
print("__________________Aufgabe 4.1 ______________________")
print(headerAndMessage)
*/

/*
// 4.2 Transaktion verschlüsseln
print("__________________Aufgabe 4.2 ______________________")

var originalTransaktionText: String = ueberwMessage
var cryptTransaktionText: String = ueberwMessage.replacing("a", with: "😇").replacing("e", with: "😎").replacing("i", with: "👁️").replacing("o", with: "🍄")

print(cryptTransaktionText)
*/

/*
// 4.3 Transaktion entschlüsseln
print("__________________Aufgabe 4.3 ______________________")

var decryptTransaktionText: String = ueberwMessage.replacing("😇", with: "a").replacing("😎", with: "e").replacing("👁️", with: "i").replacing("🍄", with: "o")

print(decryptTransaktionText)

*/

/*
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

*/

/*
// 4.5 Erweitere Verschlüsselung
print("__________________Aufgabe 4.5 ______________________")

func crypt() {
    
    let dict = ["1": "😀", "2": "😎", "0": "🍄"]
  
    for (i, dict) in dict {
        decryptTransaktionText = decryptTransaktionText.replacingOccurrences(of: i, with: dict)
    }
    
    print(decryptTransaktionText)
}

crypt()


func decrypt() {
    
    let dict = ["😀": "1", "😎": "2", "🍄": "0"]
    
    for (i, dict) in dict {
        decryptTransaktionText = decryptTransaktionText.replacingOccurrences(of: i, with: dict)
    }
    
    print(decryptTransaktionText)
}

/*
 
 print("Eingabe: ")
 var eingabe = readLine()

 */


decrypt()

 */


// ------------ Bonusaufgabe 5.3 - Weitere Bankkonten und Kontoprozesse -----------------
print("------------ Bonusaufgabe 5.3 - Weitere Bankkonten und Kontoprozesse -------------\n")

class BankKonto {
    
    var nameDesKontoInhabers: String = ""
    var ibanDesKontos: String = ""
    var pinDesKontos: Int = 0
    var kontoStand: Double = 0.0
    
}

var cKonto1 = BankKonto()
var cKonto2 = BankKonto()
var Jefferson = BankKonto()

cKonto1.nameDesKontoInhabers = "Rita Schmitt"
cKonto1.ibanDesKontos = "DE111"
cKonto1.pinDesKontos = 7777
cKonto1.kontoStand = 1000

cKonto2.nameDesKontoInhabers = "Wolfgang Bauer"
cKonto2.ibanDesKontos = "DE222"
cKonto2.pinDesKontos = 3333
cKonto2.kontoStand = 2000

Jefferson.nameDesKontoInhabers = "Jefferson Presna"
Jefferson.ibanDesKontos = "DE555"
Jefferson.pinDesKontos = 111
Jefferson.kontoStand = 3000


print("--------------- Überweisung ----------------")
print("--------------------------------------------\n")


print("Girokarte wurd eingesteckt! Bitte geben Sie ihren PIN ein: \n")
var checkPIN = Int(readLine()!)!

cKonto1 = Jefferson

if checkPIN == cKonto1.pinDesKontos {
    
    print("Bitte geb deine IBAN ein: ")
    let inputVonIBAN = readLine()
    
    if inputVonIBAN == cKonto1.ibanDesKontos {
        
        print("Gib die Ziel-IBAN ein:  ")
        let inputZuIBAN = readLine()
        
        if inputZuIBAN == cKonto2.ibanDesKontos {
            
            print("Gib den Überweisungsbetrag ein:  ")
            let betragVonZu = Double(readLine()!)!
            
            print("Der Betrag \(betragVonZu) wird jetzt überwieden (y/n): ")
            let jaNein = readLine()
            
            if jaNein == "y" {
                
                // Berechnung
                print("Kontostand von \(cKonto1.nameDesKontoInhabers) voher: \(cKonto1.kontoStand)")
                print("Kontostand von \(cKonto2.nameDesKontoInhabers) vorher: \(cKonto2.kontoStand) \n")
                
                cKonto1.kontoStand -= betragVonZu // Ziehe Betrag von Konto 1 ab
                cKonto2.kontoStand += betragVonZu // Rechne Betrag auf Konto 2 drauf
                
                print("Kontostand von \(cKonto1.nameDesKontoInhabers) nachher: \(cKonto1.kontoStand)")
                print("Kontostand von \(cKonto2.nameDesKontoInhabers) nachher: \(cKonto2.kontoStand) \n")
            }
            
            else {
                
                // Abbruch
                print(">>>> Überweisungsvorgang abgebrochen! <<<<")
            }

        }
    }
}
    
else {
    print("Sie haben den falschen PIN eingegeben!")
}































