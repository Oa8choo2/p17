---
author: Ewald Pauwels
related: |
  Source: 2025103160000675 — AI-powered reporting - HPC
  <https://otrsdict.ugent.be/znuny/index.pl?Action=AgentTicketZoom;TicketID=219644>
---

# Stappenplan om de Whisper transcriptie op de HPC te gebruiken

Hieronder ook een stappenplan om de Whisper transcriptie op de HPC te
gebruiken.

Aarzel niet om jouw hulpvragen daaromtrent te sturen naar <hpc@ugent.be> (dat
adres volgen we met meerdere mensen op)

## Connecteren

1. Navigeer in een webbrowser naar <https://login.hpc.ugent.be>
2. Kies 'Ghent University' en authenticeer dan met jouw UGent account gegevens
   (in de achtergrond wordt die doorgelinked naar jouw vsc12345 HPC account)
3. Normaliter zie je nu een website met bovenaan een blauwe HPC-UGent menubalk.

## Bestanden uploaden

4. Klik in de blauwe balk op 'Files' en dan $VSC_DATA
5. Eventueel maak je hier een nieuwe map aan (via optie 'New Directory'
   bovenaan)
6. Via drag-and-drop kan je eenvoudig vanuit een verkenner een bestand uploaden
   naar de website:
   Sleep het bestand gewoon naar het webbrowser blad van HPC
   Klik op de groene 'Upload 1 file' knop.

## Whisper opstarten

7. Klik in de blauwe balk bovenaan op 'Interactive Apps' en dan 'Transcribe'
   (onderste menukeuze)
8. Selecteer het inputbestand dat je in stappen 4-6 geüpload hebt:
   - Klik op de knop 'Select Path'
   - Selecteer bij favorites links de map '/data/gent/504/vsc50464'
   - Navigeer in de rechterkolom eventueel naar de aparte map die je aanmaakte
     in stap 5
   - Highlight in het blauw het bestand dat je hebt geüpload
   - Klik dan onderaan op Select Path
9. Kies als 'Whisper language' Dutch (of een andere taal als het gesprek niet
   in het Nederlands werd gevoerd)
10. Selecteer het knopje 'Show advanced options'
    - Zet 'Translation target languages' op 'Dutch'
    - Kies bij 'Advanced Whisper Flavour' voor 'WhisperX'
    - Selecteer het knopje 'WhisperX speaker diarization'
    - Selecteer lager bij 'Time (hours)' voor '6 hours (1/4 day)'
11. Klik op 'Launch' helemaal onderaan
    - Nu start jouw transcriptie met diarization op.
    - Je krijgt mails wanneer de berekeningen starten en wanneer die gedaan zijn.

## Transcriptie met diarization raadplegen

12. De laatste mail bevat een link waarmee je rechtstreeks bij de bestanden
    uitkomt (na 'Result')
    - .txt bestand bevat de tekst met \[SPEAKER_00,01,02,...\] labels
    - .vtt bestand bevat eveneens timecodes

Als je tijd vindt, probeer gerust en contacteer ons zeker als je tegen
problemen aanbotst.

Met vriendelijke groeten,
Ewald Pauwels
Wetenschappelijk coordinator HPC @ UGent
