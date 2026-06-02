# Abbreviations, Glossary and Acronyms

- zensical (0.0.43) has support for abbreviations
        - inline (defined in one document)
        - by using a central file  
          e.g. includes/abbreviations
  - see documentation
  - see sample

## Glossary

> an alphabetical list of terms in a particular domain
of knowledge with the definitions for those terms

Why?

- HPC has a lot of specialist words
- Most software on docs.hpc has no description

*[HPC]: High Performance Computing

How?

- part of the glossary can be extracted from the descriptions in
  - [EasyBuild](https://github.com/easybuilders/easybuild-easyconfigs)
  - [EESSI](https://www.eessi.io/docs/available_software/)

- other possible sources:
  - man page
  - apt
  - [debian screenshots](https://screenshots.debian.net/package)
  - wikipedia
  - (git) repo
  - website of (commercial) producer of the software
  - dictionaries such as
    - [Free On-line Dictionary of Computing](https://foldoc.org/)
    - [V.E.R.A. - Virtual Entity of Relevant Acronyms](https://www.ohei2.de/cgi-bin/veramain-e.cgi)

- Which words?
  - how can we select the needs we need?
  - how many (estimation, based easybuild: 6K+)
  - how to keep up-to-date
  - zensical adds the extra html code based on the include
      with a lot of glossary the build might take longer

- Where?
  - The glossary can be one separate page which can be consulted
  - or a separate file per topic **about\__topic__.md**
  - as a complement to the script generated
       available_software/detail/topic.md file
  - both files shold link to each other
  - this page(s) will give results via the search option
  - when used as an include, the `<abbr>` tag will be included
      and the title will be shown as a pop-up
      (see tool-tip)

      ```html
      <abbr title="High Performance Computing">HPC</abbr>
      ```

## Abbreviations and Acronyms

> E.g. HPC = High Performance Computing

- can be build from glossary
- should be short
      - preferably less than 80 chars.
- longer info can be used via instant or automatic preview
  - included in zensical
  - some browsers have also this functionality
        ([screenshot](preview_link_in_firefox.png))

## Example APOST3D aka APOST-3D

Source:

<https://github.com/easybuilders/easybuild-easyconfigs/blob/develop/easybuild/easyconfigs/a/APOST3D/APOST3D-20240527-intel-compilers-2023.1.0.eb>

Glossary term

```markdown
*[APOST3D]: Open-source APOST-3D software features a large number of wavefunction analysis tools developed over the past 20 years, aiming at connecting classical chemical concepts with the electronic structure of molecules. APOST-3D relies on the identification of the atom in the molecule (AIM), and several analysis tools are implemented in the most general way so that they can be used in combination with any chosen AIM. A Fortran-based code developed at the Universitat de Girona (UdG) by P. Salvador and collaborators.
```

Abbreviation

```markdown
*[APOST3D]: wavefunction analysis tools connecting classical chemical concepts with the electronic structure of molecules.
```

Acronym

```markdown
*[APOST3D]: This program performs *a posteriori*

    A) Bond order and valence analysis and

    B) "Chemical Energy Component Analysis" (CECA)

of the ab initio SCF wave functions (RHF or UHF) produced by the  
widely used "Gaussian" system (G92, G94, G98).
```

<http://occam.ttk.hu/programs/readme.html>

Not really an acronym

## Conversion of an easybuild **eb** file

The most useful parts are

- **name**, e.g. APOST3D
- **homepage**, e.g. <https://github.com/mgimferrer/APOST3D>
- **description**, e.g.
> Open-source APOST-3D software features a large number of wavefunction
> analysis tools developed over the past 20 years, aiming at connecting
> classical chemical concepts with the electronic structure of molecules.
> APOST-3D relies on the identification of the atom in the molecule (AIM), and
> several analysis tools are implemented in the most general way so that they
> can be used in combination with any chosen AIM. A Fortran-based code
> developed at the Universitat de Girona (UdG) by P. Salvador and
> collaborators.

*[APOST3D]: wavefunction analysis tools connecting classical chemical concepts with the electronic structure of molecules.
*[APOST-3D]: wavefunction analysis tools connecting classical chemical concepts with the electronic structure of molecules.
