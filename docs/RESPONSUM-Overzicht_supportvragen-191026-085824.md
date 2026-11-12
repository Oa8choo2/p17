# Overzicht supportvragen responsum

updated: gb, 20261015

Nota bene: deze pagina staat ook op de [responsum wiki][responsumwiki]


## Betrokkenen:

1. ca60 gebruikers relatie (teams): Ewald, Godfried
2. research data management (rdm.support@ugent.be)
3. dpo, privacy

## Supportvragen komen op diverse manieren binnen, en belanden dan in een otrs ticket

[QueueView: ICT > GR > Ondersteuning Onderzoek & wet. rekenen > Responsum](
https://otrsdict.ugent.be/znuny/index.pl?Action=AgentTicketQueue;QueueID=191)

## Status van de tickets: zie csv in bijlage

ticket_search_2…-03.csv
14 Oct 2026, 04:55 PM

De status van de tickets is te vinden in de laatste kolommen van die sheet.

# Tabel met responsum problemen dd. 14 okt 26

| Aantal | Type           | Uitleg |
| ------ | -------------- | ------ |
| 1 | anders              | Een ander type van probleem | 
| 1 | gdpr                | Een gdpr issue |
| 1 | intern              | Interne communicatie |
| 1 | merged              | Ticket samegevoegd met ander ticket |
| 1 | migratie            | Probleem bij migratie van sharepoint | 
|   |                     |   naar dmponline naar responsum e.d. |
| 2 | contactenlijst      | Laden van de contactlijst duurt te lang |
| 3 | gebruik             | Het gebruik van de responsum interface is | 
|   |                     |  onduidelijk voor de klant |
| 3 | toegang             | Klant krijgt geen toegang tot responsum | 
| 4 | test                | Test ticket (ook intern) |
| 5 | bug                 | Probleem in de responsum software |
| 7 | Geen_Ugent          | Klant gebruikt geen @ugent.be emailadres |
| 9 | confirmatiemail     | Klant krijgt geen confirmatie van inschrijving |
| 15 | Doorgestuurd       | Ticket werd doorgestuurd, |
|    |                    |   bvb. van rdm naar privacy |
| 18 | wachten            | Klant wacht op iets |
| 25 | Niet_doorgestuurd  | Klant heeft zelf ticket aangemaakt, |
|    |                    |   ticket is intern niet doorgestuurd | 

De belangrijkste zijn:

* ‘confirmatiemail’ (n=9 op 43 tickets) en
* ‘wachten’ (n = 18).

## Gekende problemen

### Verouderde, onveilige javascript bibliotheken

Via de add-on [retire](https://retirejs.github.io/retire.js/), \
is eenvoudig vast te stellen dat de web-interface van responsum.app \
diverse verouderde en onveilige javascript fragmenten gebruikt.

Dat is eerst vastgesteld op 16 sept. 26.

Op 15 okt 26 is dat nog steeds zo. (zie screenshot)

### SPOF, bottleneck

We moeten vermijden dat tickets ergens in een bottleneck raken omdat \
er maar één iemand beschikbaar is. 

M.a.w. per betrokken team best minimum twee mensen die indien nodig van \
elkaar kunnen overnemen.

### Confirmatiemail met verificatielink komt niet toe

Root cause is performantie issue bij Responsum

Zie ook [Email problemen responsum][emailprob]

Acties:

* mail doorsturen naar privacy@ugent.be
* ticket assigneren aan Jordy Bombeke

### Confirmatiemail kan ook in spam belanden

Actie: faq daarvoor doorsturen naar klant

### Een account in responsum is aangevraagd met een niet-ugent mailadres

Nota bene: als dit het geval is dan kan de confirmatiemail ook niet toekomen

Een niet-ugent adres is een emailadres dat niet eindigt op @ugent.be

Het is onduidelijk hoe dat gedefineerd is, bvb wat met @uzgent.be?

Actie: klant informeren

### “Wachten”

De klant heeft een dossier en wacht nu ergens op.

Dit heeft waarschijnlijk ook te maken met het goedkeuren van het dossier of met \
onduidelijke info over het gebruik van responsum.

Actie: als er iets moet goedgekeurd worden moet iemand dat kunnen doen.

### Bugs

Een aantal tickets zijn te klasseren als bug in responsum.

#### Bug: Niet afleveren confirmatiemail

Actie: op te lossen door responsum

#### Bug: Inladen van 40K contacten duurt heel erg lang

Actie: op te lossen door responsum

Ondertussen kan eventueel dit antwoord gegeven worden:

> The list of contacts in responsum is indeed extremely slow. 
>
> This is a known bug.
>
> You can improve the performance yourself by
>  * start as few other applications (except your browser) as possible
>  * open as few other tabs as possible in the browser \
>    (and certainly no 'dynamic' like videos etc)
>  * disable add-ons (temporarily) of your browser
>
>  Then in that contact form field \
>  just start typing the name of the contact you need, \
>  after a long time your contact should appear.

#### Sommige klanten kunnen geen account aanmaken

Het gaat hier om personen mét een \@ugent.be adres,
maar studenten.

Actie: fix in responsum?

### Migratie problemen van Sharepoint en/of DMPonline naar responsum

Actie: waarschijnlijk kan rdm dat oplossen?

### Responsum.app en Safari

Blijkbaar werkt responsum website niet in Safari. Te bevestigen.

### Data van anderen is te zien in eigen dossier

Nota bene: misschien is dat ook de bedoeling?

Vermoedelijk kunnen contactpersonenen het dossier van elkaar zien.

Dat éne ticket moet zeker goed bekeken worden.

Gaat over: [GDPR record "V1 pending" -- Ticket#2026100160002003][ticket]

*[SPOF]: single point of failure

[emailprob]: https://teams.cloud.microsoft/l/message/19:65e7f792631b47ddac5db059c5902a6c@thread.tacv2/1791875702472?tenantId=d7811cde-ecef-496c-8f91-a1786241b99c&groupId=22483505-13c8-4fda-9c62-8b2d7b25f9eb&parentMessageId=1791875702472&teamName=ICT%20Operations%20(SMO)&channelName=Mail&createdTime=1791875702472

[spamfaq]: https://otrsdict.ugent.be/znuny/public.pl?Action=PublicFAQZoom;ItemID=493;ZoomBackLink=QWN0aW9uPVB1YmxpY0ZBUVNlYXJjaDtTdWJhY3Rpb249U2VhcmNoO0Z1bGx0ZXh0PXNhZmUgc2Vu%0AZGVyO1NvcnRCeT1GQVFJRDtPcmRlcj1Eb3duO1N0YXJ0SGl0PTE%3D%0A; "I am expecting an email, but I have not received it."
[retire]: https://retirejs.github.io/retire.js/ "Retire add-on"

[ticket]: https://otrsdict.ugent.be/znuny/index.pl?Action=AgentTicketZoom;TicketID=255115
[responsumwiki]: https://universiteitgent.atlassian.net/wiki/spaces/RESPONSUM/

