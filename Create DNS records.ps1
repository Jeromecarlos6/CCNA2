Install-WindowsFeature  -name DNS  -includeManagementTools
Add-DnsServerPrimaryZone -Name "ngcp11.ph" -ZoneFile "ngcp11.ph.dns"
add-DnsServerResourceRecord -zonename ngcp11.ph -A -name ns  -ipv4address 10.11.1.10
add-DnsServerResourceRecord -zonename ngcp11.ph -Cname -name www -hostname ns.ngcp11.ph
add-DnsServerResourceRecord -zonename ngcp11.ph -Cname -name imap -hostname ns.ngcp11.ph
add-DnsServerResourceRecord -zonename ngcp11.ph -Cname -name pop -hostname ns.ngcp11.ph
add-DnsServerResourceRecord -zonename ngcp11.ph -Cname -name smtp -hostname ns.ngcp11.ph
###FOR CISCO DEVICES DNS RECORDS;
add-DnsServerResourceRecord -zonename ngcp11.ph -A -name cb  -ipv4address 10.11.1.4
add-DnsServerResourceRecord -zonename ngcp11.ph -A -name ct  -ipv4address 10.11.1.2
add-DnsServerResourceRecord -zonename ngcp11.ph -A -name cm  -ipv4address 10.11.100.8
add-DnsServerResourceRecord -zonename ngcp11.ph -A -name ed  -ipv4address 10.11.11.1
add-DnsServerResourceRecord -zonename ngcp11.ph -A -name p1  -ipv4address 10.11.100.101
add-DnsServerResourceRecord -zonename ngcp11.ph -A -name p2  -ipv4address 10.11.100.102
add-DnsServerResourceRecord -zonename ngcp11.ph -A -name c1  -ipv4address 10.11.50.6
add-DnsServerResourceRecord -zonename ngcp11.ph -A -name c2  -ipv4address 10.11.50.8
add-DnsServerResourceRecord -zonename ngcp11.ph -A -name ap  -ipv4address 10.11.10.3