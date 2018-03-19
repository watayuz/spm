import Foundation
import PerfectLib
import PerfectHTTP
import PerfectHTTPServer

let server = HTTPServer()
var routes = Routes()

routes.add(method: .get, uri: "/{name}", handler: {
    request, response in
    
    response.setHeader(.contentType, value: "text/html")
    response.appendBody(string: "<html><title>Hello, world!</title><body>Hello, world!</body></html>")
    print("url variables : \(request.urlVariables)")
    
    response.completed()
})
server.addRoutes(routes)

server.serverPort = 8181

do {
    try server.start()
} catch PerfectError.networkError(let err, let msg) {
    print("Network error thrown: \(err) \(msg)")
}
