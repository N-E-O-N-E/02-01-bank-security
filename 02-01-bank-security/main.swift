//
//  main.swift
//  02-01-bank-security
//
//  Created by Markus Wirtz on 25.06.24.
//

import Foundation


// 3.1 Kontoberechnung durchführen -----------------------------------------------------------------------------------
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
print("Modulo: \(restbetrag)\n")



// 3.2 Typen konvertieren Aufgabe -----------------------------------------------------------------------------------
print("__________________Aufgabe 3.2 ______________________")
var amountInt: Int = 500
var amountDouble: Double = Double(amountInt)
var balanceInCent = kontostand * 100
var acclountNumberString = String(kontoNr)
print("KontoNr als String: \(acclountNumberString)\n")



// 3.3 Daten gruppieren -----------------------------------------------------------------------------------
print("__________________Aufgabe 3.3 ______________________")

var kontoStatusTuple: (KntNr: Int, KntValue: Double, KntInhaber: String) = (KntNr: kontoNr, KntValue: Double(kontostand), KntInhaber: kompleteName)
      
print("Kontoinhaber: \(kontoStatusTuple.KntInhaber)")
print("Kontonummer: \(kontoStatusTuple.KntNr)")
print("Kontostand: \(kontoStatusTuple.KntValue) EUR")

kontoStatusTuple.KntValue = 1000.00
print("Neuer Kontostand: \(kontoStatusTuple.KntValue) EUR \n")




// 3.4 Kontogebühren & Zinsen -----------------------------------------------------------------------------------
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
print("Kontostand inkl. Zinsbetrag: \(kontoStatusTuple.KntValue) \n")



// 3.5 Kreditrahmen -----------------------------------------------------------------------------------
print("__________________Aufgabe 3.5 ______________________")

var limitCredit: Int = 1000
var payValue: Double = 123.45
var creditUse = payValue / Double(limitCredit) * 100
print("Kreditrahmen ausgeschöpft: \(String(format: "%.2f", creditUse)) % \n")

 

// 4.1 Überweisung -----------------------------------------------------------------------------------
print("__________________Aufgabe 4.1 ______________________")
print(headerAndMessage)
print("\n")


// 4.2 Transaktion verschlüsseln -----------------------------------------------------------------------------------
print("__________________Aufgabe 4.2 ______________________")
var originalTransaktionText: String = ueberwMessage
var cryptTransaktionText: String = ueberwMessage.replacing("a", with: "😇").replacing("e", with: "😎").replacing("i", with: "👁️").replacing("o", with: "🍄")
print(cryptTransaktionText)
print("\n")


// 4.3 Transaktion entschlüsseln -----------------------------------------------------------------------------------
print("__________________Aufgabe 4.3 ______________________")
var decryptTransaktionText: String = ueberwMessage.replacing("😇", with: "a").replacing("😎", with: "e").replacing("👁️", with: "i").replacing("🍄", with: "o")
print(decryptTransaktionText)
print("\n")


// 4.4 Gültigkeit der Überwesiung -----------------------------------------------------------------------------------
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
print("\n")


// 4.5 Erweitere Verschlüsselung -----------------------------------------------------------------------------------
print("__________________Aufgabe 4.5 ______________________")

func crypt() {
    
    let dict = ["1": "😀", "2": "😎", "0": "🍄"]
  
    for (i, dict) in dict {
        decryptTransaktionText = decryptTransaktionText.replacingOccurrences(of: i, with: dict)
    }
    
    print(decryptTransaktionText)
}

func decrypt() {
    
    let dict = ["😀": "1", "😎": "2", "🍄": "0"]
    
    for (i, dict) in dict {
        decryptTransaktionText = decryptTransaktionText.replacingOccurrences(of: i, with: dict)
    }
    
    print(decryptTransaktionText)
    print("\n")
}

crypt()
decrypt()





// 5.3 Bonusaufgabe - Weitere Bankkonten und Kontoprozesse   -----------------------------------------------------------------------------------
print("Bonusaufgabe 5.3 - Weitere Bankkonten und Kontoprozesse\n")

//Anlegen der Klasse Bankkonto
class BankKonto {
    var nameDesKontoInhabers: String = ""
    var ibanDesKontos: String = ""
    var pinDesKontos: Int = 0
    var kontoStand: Double = 0.0
}

// Erstellen der Instanzen für 2 Konten
var quellkonto = BankKonto()
var zielkonto = BankKonto()

// Quellkonto
quellkonto.nameDesKontoInhabers = "Rita Schmitt"
quellkonto.ibanDesKontos = "DE111"
quellkonto.pinDesKontos = 1111
quellkonto.kontoStand = 2500

// Zielkonto
zielkonto.nameDesKontoInhabers = "Wolfgang Bauer"
zielkonto.ibanDesKontos = "DE222"
zielkonto.pinDesKontos = 2222
zielkonto.kontoStand = 3100


// Überweisungsprozess
print("--------- Musterbank - Willkommen ----------")
print("----------------Überweisung-----------------\n")

// Kunde steckt Karte in Geldautomat

print("Girokarte wurd eingesteckt!\nBitte geben Sie ihren 4 stelligen PIN ein: ")
var checkPIN = Int(readLine()!)! // Pin wird gelesen

if checkPIN == quellkonto.pinDesKontos {
    
    print("Gib die IBAN des Empfängers ein:  ")
    let inputZuIBAN = readLine()
    
    if inputZuIBAN == zielkonto.ibanDesKontos {
        
        print("Gib den Überweisungsbetrag ein:  ")
        let betragVonZu = Double(readLine()!)!
        
        print("Der Betrag \(betragVonZu) wird jetzt überwieden (y/n): ")
        let jaNein = readLine()
        
        if jaNein == "y" {
            
            // Verrechnung des Betrages mit Ausgabe vor und nach der Berechnung
            print("Kontostand von \(quellkonto.nameDesKontoInhabers) voher: \(String(format: "%.2f", quellkonto.kontoStand)) EUR")
            print("Kontostand von \(zielkonto.nameDesKontoInhabers) vorher: \(String(format: "%.2f",zielkonto.kontoStand)) EUR\n")
            
            quellkonto.kontoStand -= betragVonZu // Ziehe Betrag von Konto 1 ab
            zielkonto.kontoStand += betragVonZu // Rechne Betrag auf Konto 2 drauf
            
            print("Kontostand von \(quellkonto.nameDesKontoInhabers) nachher: \(String(format: "%.2f",quellkonto.kontoStand)) EUR")
            print("Kontostand von \(zielkonto.nameDesKontoInhabers) nachher: \(String(format: "%.2f",zielkonto.kontoStand)) EUR\n")
        }
        
        else {
            
            // Abbruch
            print(">>>> Überweisungsvorgang abgebrochen! <<<<")
        }

    }
    
}
    // Fehler bei falscher PIN
else {
    print("Sie haben den falschen PIN eingegeben!\nBitte entnehmen Sie ihre Karte und versuchen sie es erneut!\n")
}



// 5.4 Bonus: BMI Rechner ----------------------------------------------------------------------
print("Bonusaufgabe 5.4 Bonus: BMI Rechner\n")

print("Hallo, wie ist dein Name: ")
var name = readLine()
print("Hallo \(name!), schön das du da bist.\nNenne mir dein Gewicht in \"kg\": ")
var gewicht:Double = Double(readLine()!)!
print("Nenne mir deine Körpergröße in \"Metern\": ")
var groesse: Double = Double(readLine()!)!
var bmiRechnung: Double = gewicht / ( groesse * groesse)
print("Dein errechneter BMI ist: \(String(format: "%.2f", bmiRechnung))\n")
 


// 5.5 Bonus: Zahlen raten ----------------------------------------------------------------------
print("Bonusaufgabe 5.4 Bonus: Zahlen raten\n")

var randomInt: Int = Int.random(in: 0..<10)

print("Hallo, bitte nenne mir deinen Namen: ")
var nameUser = readLine()

print("Super, vielen Dank \(nameUser!).\nNenne mir eine beliebige zahl zwischen 1 und 10: ")
var randomUsereingabe = Int(readLine()!)!
              
    if randomUsereingabe == randomInt {
        
        print("Super, gewonnen!\n")
    }
    else {
        
        print("Schade, kein Treffer!\n")
    }



// 5.6 Bonus: Taschenrechner ------------------------------------------------------------------------#
print("5.6 Bonus: Taschenrechner\n")

var eingabeZahl1: Int = 0
var eingabeZahl2: Int = 0
var divisionSum: Int = 0
var moduloZahlen: Int = 0

// Eingaben
print("Hallo, bitte gib deine erste Zahl ein:")
eingabeZahl1 = Int(readLine()!)!
print("Bitte gib deine zweite Zahl ein:")
eingabeZahl2 = Int(readLine()!)!

// Berechnung
divisionSum = eingabeZahl1 / eingabeZahl2
moduloZahlen = eingabeZahl1 % eingabeZahl2

print("Ergebnis der Division= \(divisionSum)\nModulo ist: \(moduloZahlen)")






















