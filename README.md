# ToDoList (SwiftUI + Firebase)

En enkel to-do app laget i SwiftUI som bruker Firebase til autentisering, lagring og sanntidsoppdateringer.  
Prosjektet er laget for å lære hvordan SwiftUI kan kombineres med Firebase-tjenester.

## Høydepunkter
- Innlogging med e-post/passord via `FirebaseAuth`, med visning som bytter mellom innlogging og app-faner.  
- Oppgaver synkroniseres fra hver brukers `users/<uid>/todoItems`-samling med `FirestoreQuery`.  
- Nye oppgaver valideres og lagres i Cloud Firestore gjennom en enkel modellstruktur.  

## Erfaring med Firebase
- Modeller måtte valideres før lagring i databasen.  
- Autentisering og dataendringer oppleves direkte i SwiftUI sitt reaktive rammeverk.  
- Viktigheten av sikkerhetsregler og ryddig datastruktur ble tydelig selv i et lite prosjekt.  

## Kjør selv
1. Åpne `ToDoList/ToDoList.xcodeproj` i Xcode 15+.  
2. Sett opp et Firebase-prosjekt, aktiver innlogging med e-post/passord, og legg til `GoogleService-Info.plist`.  
3. Bruk appen 

## Videre arbeid
- Dokumentere Firestore-sikkerhetsregler.  
- Legge til mulighet for å merke oppgaver som fullført.  
- Utforske varslinger for tidsfrister.  
