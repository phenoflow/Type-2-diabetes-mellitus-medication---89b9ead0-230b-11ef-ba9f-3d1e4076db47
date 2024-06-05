# Caroline E Dale, Rohan Takhar, et al., 2024.

import sys, csv, re

codes = [{"code":"0601021H0BNABAP","system":"bnf"},{"code":"0601021H0AAAMAM","system":"bnf"},{"code":"0601023B0AAAFAF","system":"bnf"},{"code":"0601021M0AAAHAH","system":"bnf"},{"code":"0601021M0AAAIAI","system":"bnf"},{"code":"0601021M0AAAPAP","system":"bnf"},{"code":"0601021M0AAAGAG","system":"bnf"},{"code":"0601022B0AAAYAY","system":"bnf"},{"code":"0601021M0AAAJAJ","system":"bnf"},{"code":"0601022B0AAALAL","system":"bnf"},{"code":"0601021A0AAAHAH","system":"bnf"},{"code":"0601023B0AAAEAE","system":"bnf"},{"code":"0601021X0AAALAL","system":"bnf"},{"code":"0601023X0AAAEAE","system":"bnf"},{"code":"0601022B0AAAZAZ","system":"bnf"},{"code":"0601021X0AAAJAJ","system":"bnf"},{"code":"0601021H0AAAKAK","system":"bnf"},{"code":"0601021H0BNADAQ","system":"bnf"},{"code":"0601021A0AAAGAG","system":"bnf"},{"code":"0601021M0AAALAL","system":"bnf"},{"code":"0601021E0AAADAD","system":"bnf"},{"code":"0601021X0AAAKAK","system":"bnf"},{"code":"0601023B0AAADAD","system":"bnf"},{"code":"0601022B0AAARAR","system":"bnf"},{"code":"0601023X0AAADAD","system":"bnf"},{"code":"0601021H0AAAIAI","system":"bnf"},{"code":"0601022B0AAAKAK","system":"bnf"},{"code":"0601022B0AAAJAJ","system":"bnf"},{"code":"0601022B0BHAAAR","system":"bnf"},{"code":"0601022B0AAAIAI","system":"bnf"},{"code":"0601022B0AAAMAM","system":"bnf"},{"code":"0601021M0AAAUAU","system":"bnf"},{"code":"0601021M0AAANAN","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('type-2-diabetes-mellitus-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["type-2-diabetes-mellitus-t2dm-medication-085ml---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["type-2-diabetes-mellitus-t2dm-medication-085ml---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["type-2-diabetes-mellitus-t2dm-medication-085ml---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
