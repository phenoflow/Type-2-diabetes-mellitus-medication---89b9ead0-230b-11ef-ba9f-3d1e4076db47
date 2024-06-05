# Caroline E Dale, Rohan Takhar, et al., 2024.

import sys, csv, re

codes = [{"code":"0601021P0AAABAB","system":"bnf"},{"code":"0601021H0BBAAAB","system":"bnf"},{"code":"0601021H0AAAJAJ","system":"bnf"},{"code":"0601021P0BBAAAB","system":"bnf"},{"code":"0601021H0BDABAB","system":"bnf"},{"code":"0601021H0BKABAB","system":"bnf"},{"code":"0601023ACAAAAAA","system":"bnf"},{"code":"0601023AEAAAAAA","system":"bnf"},{"code":"0601023ACBBAAAA","system":"bnf"},{"code":"0601023AYBBABAB","system":"bnf"},{"code":"0601023ARAAAAAA","system":"bnf"},{"code":"0601023AYAAAAAA","system":"bnf"},{"code":"0601023AVBBAAAA","system":"bnf"},{"code":"0601023AQAAAAAA","system":"bnf"},{"code":"0601023AGBBAAAA","system":"bnf"},{"code":"0601023AYAAABAB","system":"bnf"},{"code":"0601023AEBBAAAA","system":"bnf"},{"code":"0601021H0AAABAB","system":"bnf"},{"code":"0601021H0AAANAN","system":"bnf"},{"code":"0601023ARAAABAB","system":"bnf"},{"code":"0601022B0AAANAN","system":"bnf"},{"code":"0601023ARBBABAB","system":"bnf"},{"code":"0601023AYBBAAAA","system":"bnf"},{"code":"0601023ALAAAAAA","system":"bnf"},{"code":"0601023AVAAAAAA","system":"bnf"},{"code":"0601023ALAAABAB","system":"bnf"},{"code":"0601023ARBBAAAA","system":"bnf"},{"code":"0601023AGAAAAAA","system":"bnf"},{"code":"0601021P0BCADAB","system":"bnf"},{"code":"0601023AQBBAAAA","system":"bnf"},{"code":"0601023AXBBAAAA","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('type-2-diabetes-mellitus-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["type-2-diabetes-mellitus-t2dm-medication-075mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["type-2-diabetes-mellitus-t2dm-medication-075mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["type-2-diabetes-mellitus-t2dm-medication-075mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
