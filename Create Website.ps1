Install-WindowsFeature  -name Web-Server  -includeManagementTools
New-Website -name "ngcp11.ph" -hostheader "www.ngcp11.ph"-physicalpath "d:\webs\datingbiz"