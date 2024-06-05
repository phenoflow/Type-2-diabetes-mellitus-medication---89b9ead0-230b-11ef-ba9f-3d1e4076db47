# Caroline E Dale, Rohan Takhar, et al., 2024.

import sys, csv, re

codes = [{"code":"0601021M0BMAAAM","system":"bnf"},{"code":"0601021M0BFAAAM","system":"bnf"},{"code":"0601021M0BGAAAM","system":"bnf"},{"code":"0601023AMBBABAB","system":"bnf"},{"code":"0601021M0BFABAM","system":"bnf"},{"code":"0601023B0AAABAB","system":"bnf"},{"code":"0601023B0BEABAB","system":"bnf"},{"code":"0601021M0BNAAAM","system":"bnf"},{"code":"0601023B0BDAAAB","system":"bnf"},{"code":"0601023AMAAABAB","system":"bnf"},{"code":"0601021M0BFACAM","system":"bnf"},{"code":"0601021R0BBAAAA","system":"bnf"},{"code":"0601021M0AAAMAM","system":"bnf"},{"code":"0601021R0AAAAAA","system":"bnf"},{"code":"0601021M0BJAAAM","system":"bnf"},{"code":"0601023B0BCAEAB","system":"bnf"},{"code":"0601021M0BLAAAM","system":"bnf"},{"code":"0601023B0BCABAB","system":"bnf"},{"code":"0601023B0BBABAB","system":"bnf"},{"code":"0601021M0BHAAAM","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('type-2-diabetes-mellitus-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["type-2-diabetes-mellitus-t2dm-medication-300mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["type-2-diabetes-mellitus-t2dm-medication-300mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["type-2-diabetes-mellitus-t2dm-medication-300mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
