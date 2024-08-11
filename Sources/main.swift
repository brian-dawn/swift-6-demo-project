import Plot
import Vapor

let app = try await Application.make(.detect())

extension HTML {
    func toResponse(status: HTTPResponseStatus = .ok, headers: HTTPHeaders = ["Content-Type": "text/html; charset=utf-8"]) -> Response {
        let renderedHTML = self.render()
        var headers = headers
        headers.add(name: .contentType, value: "text/html; charset=utf-8")
        return Response(status: status, headers: headers, body: .init(string: renderedHTML))
    }
}


app.get("hello") { req in
   HTML(
        .head(
            .title("My website"),
            .stylesheet("styles.css")
        ),
        .body(
            .div(
                .h1("My website"),
                .p("Writing HTML in Swift is pretty great!"),
            )
        )
   ).toResponse()
        


}

try await app.execute()
