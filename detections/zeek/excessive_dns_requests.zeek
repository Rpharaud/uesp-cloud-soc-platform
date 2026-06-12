# Detection Metadata
# Description: Excessive DNS Requests
# Detection Domain: DNS
# Detection Methodology: Behavioral
# Severity: Medium
# ATT&CK Technique: T1071.004
# Author: Reggie Pharaud
# Date: 2026-05-15
# References: https://attack.mitre.org/techniques/T1071/004/

event dns_request(c: connection, msg: dns_msg, query: string)
{
    # Script logic for Excessive DNS Requests
    
}
