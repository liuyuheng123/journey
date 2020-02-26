### A record section
- Most records will be A records.
- Host field: 
    - xxx.domain.com , xxx is the host
    - @: blank "A record" (domain.com)
    
### CNAME section
```
CNAME records point to domain names instead of IP addresses. The benefit to using a CNAME record is that you can point a host to a particular domain name, then only modify the target domain name’s A records to have the change take place on both domains. This method commonly is used by those who own several top-level domains (TLD) in different versions (.com, .net, .org, etc.) of the same domain.

For example, you own _domain.com_ and you also own _domain.net_, and you want the records to point to the same IP. You can create CNAME records for the www host of _domain.net_ that point to www.domain.com. Then, to change the www host of _domain.net_ all you must do it modify the A record of www.domain.com to point to its new IP address, and www.domain.net also is automatically changed.
```
