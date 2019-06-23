https://developer.mozilla.org/en-US/docs/Web/HTTP

### HTTP flow
1. Open a TCP connection
2. Send an HTTP message. For example:
    ```
    GET / HTTP/1.1
    Host: developer.mozilla.org
    Accept-Language: fr
    ```
3. Read the response sent by the server, such as:
    ```
    HTTP/1.1 200 OK
    Date: Sat, 09 Oct 2010 14:28:02 GMT
    Server: Apache
    Last-Modified: Tue, 01 Dec 2009 20:18:22 GMT
    ETag: "51142bc1-7449-479b075b2891b"
    Accept-Ranges: bytes
    Content-Length: 29769
    Content-Type: text/html
    
    <!DOCTYPE html... (here comes the 29769 bytes of the requested web page)
    ```
4. Close or reuse the connection for further requests

### HTTP MessagesSection
Requests
- Method
- Path
- Version
- Headers

Responses
- Version
- Status code (e.g. 200)
- STatus message (e.g. OK)
- Headers
