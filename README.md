# errata_count_report_sat6

The purpose of this script is to generate a csv report that will
present all the Content Hosts and the current state of Security,
Bugfix and Enhancement

Below an example of the output
```
$ cat errata_report.csv 
Date,Id,Name,Operating System,Organization,Location,Security,Bugfix,Enhancement
04/09/2021,30,chase-gamma.khw2.lab.eng.bos.redhat.com,RedHat 7.6,ACME,BURNABY,0,0,0
04/09/2021,51,dhcp-12-214-103.gsslab.rdu.redhat.com,RedHat 6.5,ACME,BURNABY,0,0,0
04/09/2021,57,dhcp-12-214-108.gsslab.rdu.redhat.com,RedHat 6.10,ACME,BURNABY,14,11,3
```

Just run the script on your Foreman/Satellite Server

Enjoy it.
