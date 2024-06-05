cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  type-2-diabetes-mellitus-t2dm-medication-sitagliptin---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-sitagliptin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  type-2-diabetes-mellitus-t2dm-medication-dispo---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-dispo---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-sitagliptin---primary/output
  type-2-diabetes-mellitus-t2dm-medication-085ml---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-085ml---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-dispo---primary/output
  type-2-diabetes-mellitus-t2dm-medication-injection---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-injection---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-085ml---primary/output
  type-2-diabetes-mellitus-t2dm-medication-300mg---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-300mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-injection---primary/output
  type-2-diabetes-mellitus-t2dm-medication-amaryl---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-amaryl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-300mg---primary/output
  type-2-diabetes-mellitus-t2dm-medication-glidipion---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-glidipion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-amaryl---primary/output
  type-2-diabetes-mellitus-t2dm-medication-diabetamide---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-diabetamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-glidipion---primary/output
  type-2-diabetes-mellitus-t2dm-medication-bydureon---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-bydureon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-diabetamide---primary/output
  enyglid-type-2-diabetes-mellitus-t2dm-medication---primary:
    run: enyglid-type-2-diabetes-mellitus-t2dm-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-bydureon---primary/output
  type-2-diabetes-mellitus-t2dm-medication-vipidia---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-vipidia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: enyglid-type-2-diabetes-mellitus-t2dm-medication---primary/output
  type-2-diabetes-mellitus-t2dm-medication-075mg---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-075mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-vipidia---primary/output
  type-2-diabetes-mellitus-t2dm-medication-vildagliptin---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-vildagliptin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-075mg---primary/output
  type-2-diabetes-mellitus-t2dm-medication-trulicity---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-trulicity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-vildagliptin---primary/output
  type-2-diabetes-mellitus-t2dm-medication-yaltormin---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-yaltormin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-trulicity---primary/output
  type-2-diabetes-mellitus-t2dm-medication-rybelsus---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-rybelsus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-yaltormin---primary/output
  type-2-diabetes-mellitus-t2dm-medication-nateglinide---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-nateglinide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-rybelsus---primary/output
  type-2-diabetes-mellitus-t2dm-medication-forxiga---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-forxiga---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-nateglinide---primary/output
  type-2-diabetes-mellitus-t2dm-medication-semaglutide---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-semaglutide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-forxiga---primary/output
  type-2-diabetes-mellitus-t2dm-medication-tolbutamide---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-tolbutamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-semaglutide---primary/output
  type-2-diabetes-mellitus-t2dm-medication-canagliflozin---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-canagliflozin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-tolbutamide---primary/output
  type-2-diabetes-mellitus-t2dm-medication-avandamet---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-avandamet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-canagliflozin---primary/output
  type-2-diabetes-mellitus-t2dm-medication-chlorpropamide---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-chlorpropamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-avandamet---primary/output
  type-2-diabetes-mellitus-t2dm-medication-037ml---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-037ml---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-chlorpropamide---primary/output
  type-2-diabetes-mellitus-t2dm-medication-novonorm---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-novonorm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-037ml---primary/output
  type-2-diabetes-mellitus-t2dm-medication-160mg---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-160mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-novonorm---primary/output
  type-2-diabetes-mellitus-t2dm-medication-albiglutide---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-albiglutide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-160mg---primary/output
  type-2-diabetes-mellitus-t2dm-medication-linagliptin---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-linagliptin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-albiglutide---primary/output
  type-2-diabetes-mellitus-t2dm-medication-niddaryl---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-niddaryl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-linagliptin---primary/output
  type-2-diabetes-mellitus-t2dm-medication-jardiance---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-jardiance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-niddaryl---primary/output
  type-2-diabetes-mellitus-t2dm-medication-100mg---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-jardiance---primary/output
  type-2-diabetes-mellitus-t2dm-medication-glipizide---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-glipizide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-100mg---primary/output
  type-2-diabetes-mellitus-t2dm-medication-glimepiride---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-glimepiride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-glipizide---primary/output
  type-2-diabetes-mellitus-t2dm-medication-powder---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-powder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-glimepiride---primary/output
  type-2-diabetes-mellitus-t2dm-medication-pioglitazone---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-pioglitazone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-powder---primary/output
  type-2-diabetes-mellitus-t2dm-medication-granule---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-granule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-pioglitazone---primary/output
  type-2-diabetes-mellitus-t2dm-medication-bolamyn---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-bolamyn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-granule---primary/output
  type-2-diabetes-mellitus-t2dm-medication-074ml---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-074ml---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-bolamyn---primary/output
  type-2-diabetes-mellitus-t2dm-medication-minodiab---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-minodiab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-074ml---primary/output
  type-2-diabetes-mellitus-t2dm-medication-eperzan---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-eperzan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-minodiab---primary/output
  type-2-diabetes-mellitus-t2dm-medication-tablet---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-eperzan---primary/output
  type-2-diabetes-mellitus-t2dm-medication-lamzarin---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-lamzarin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-tablet---primary/output
  type-2-diabetes-mellitus-t2dm-medication-glizofar---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-glizofar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-lamzarin---primary/output
  type-2-diabetes-mellitus-t2dm-medication-starlix---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-starlix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-glizofar---primary/output
  type-2-diabetes-mellitus-t2dm-medication-180mg---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-180mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-starlix---primary/output
  type-2-diabetes-mellitus-t2dm-medication-500microgram---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-500microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-180mg---primary/output
  type-2-diabetes-mellitus-t2dm-medication-rosiglitazone---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-rosiglitazone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-500microgram---primary/output
  type-2-diabetes-mellitus-t2dm-medication-januvia---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-januvia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-rosiglitazone---primary/output
  type-2-diabetes-mellitus-t2dm-medication-prandin---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-prandin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-januvia---primary/output
  type-2-diabetes-mellitus-t2dm-medication-glucobay---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-glucobay---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-prandin---primary/output
  type-2-diabetes-mellitus-t2dm-medication-jentadueto---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-jentadueto---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-glucobay---primary/output
  type-2-diabetes-mellitus-t2dm-medication-dulaglutide---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-dulaglutide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-jentadueto---primary/output
  type-2-diabetes-mellitus-t2dm-medication-meijumet---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-meijumet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-dulaglutide---primary/output
  type-2-diabetes-mellitus-t2dm-medication-prolongedrelease---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-prolongedrelease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-meijumet---primary/output
  type-2-diabetes-mellitus-t2dm-medication-steglatro---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-steglatro---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-prolongedrelease---primary/output
  type-2-diabetes-mellitus-t2dm-medication-sukkarto---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-sukkarto---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-steglatro---primary/output
  type-2-diabetes-mellitus-t2dm-medication-glucophage---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-glucophage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-sukkarto---primary/output
  type-2-diabetes-mellitus-t2dm-medication-500mg---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-500mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-glucophage---primary/output
  type-2-diabetes-mellitus-t2dm-medication-sugar---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-sugar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-500mg---primary/output
  type-2-diabetes-mellitus-t2dm-medication-metabet---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-metabet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-sugar---primary/output
  type-2-diabetes-mellitus-t2dm-medication-synjardy---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-synjardy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-metabet---primary/output
  glucient-type-2-diabetes-mellitus-t2dm-medication---primary:
    run: glucient-type-2-diabetes-mellitus-t2dm-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-synjardy---primary/output
  type-2-diabetes-mellitus-t2dm-medication-750mg---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-750mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: glucient-type-2-diabetes-mellitus-t2dm-medication---primary/output
  type-2-diabetes-mellitus-t2dm-medication-zicron---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-zicron---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-750mg---primary/output
  type-2-diabetes-mellitus-t2dm-medication-dapagliflozin---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-dapagliflozin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-zicron---primary/output
  type-2-diabetes-mellitus-t2dm-medication-xigduo---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-xigduo---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-dapagliflozin---primary/output
  type-2-diabetes-mellitus-t2dm-medication-avandia---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-avandia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-xigduo---primary/output
  type-2-diabetes-mellitus-t2dm-medication-850mg---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-850mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-avandia---primary/output
  type-2-diabetes-mellitus-t2dm-medication-invokana---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-invokana---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-850mg---primary/output
  type-2-diabetes-mellitus-t2dm-medication-glibenclamide---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-glibenclamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-invokana---primary/output
  type-2-diabetes-mellitus-t2dm-medication-diabiom---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-diabiom---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-glibenclamide---primary/output
  type-2-diabetes-mellitus-t2dm-medication-repaglinide---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-repaglinide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-diabiom---primary/output
  type-2-diabetes-mellitus-t2dm-medication-saxagliptin---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-saxagliptin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-repaglinide---primary/output
  type-2-diabetes-mellitus-t2dm-medication-ertugliflozin---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-ertugliflozin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-saxagliptin---primary/output
  type-2-diabetes-mellitus-t2dm-medication-alogliptin---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-alogliptin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-ertugliflozin---primary/output
  type-2-diabetes-mellitus-t2dm-medication-onglyza---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-onglyza---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-alogliptin---primary/output
  type-2-diabetes-mellitus-t2dm-medication-diamicron---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-diamicron---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-onglyza---primary/output
  type-2-diabetes-mellitus-t2dm-medication-euglucon---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-euglucon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-diamicron---primary/output
  type-2-diabetes-mellitus-t2dm-medication-acarbose---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-acarbose---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-euglucon---primary/output
  type-2-diabetes-mellitus-t2dm-medication-019ml---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-019ml---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-acarbose---primary/output
  type-2-diabetes-mellitus-t2dm-medication-modifiedrelease---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-modifiedrelease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-019ml---primary/output
  type-2-diabetes-mellitus-t2dm-medication-bilxona---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-bilxona---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-modifiedrelease---primary/output
  type-2-diabetes-mellitus-t2dm-medication-syringe---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-syringe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-bilxona---primary/output
  type-2-diabetes-mellitus-t2dm-medication-komboglyze---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-komboglyze---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-syringe---primary/output
  type-2-diabetes-mellitus-t2dm-medication-vokanamet---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-vokanamet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-komboglyze---primary/output
  type-2-diabetes-mellitus-t2dm-medication-gliclazide---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-gliclazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-vokanamet---primary/output
  type-2-diabetes-mellitus-t2dm-medication-lixisenatide---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-lixisenatide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-gliclazide---primary/output
  type-2-diabetes-mellitus-t2dm-medication-vamju---primary:
    run: type-2-diabetes-mellitus-t2dm-medication-vamju---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-lixisenatide---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-mellitus-t2dm-medication-vamju---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
