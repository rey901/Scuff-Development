import com.sun.net.httpserver.HttpExchange;
import com.sun.net.httpserver.HttpHandler;
import com.sun.net.httpserver.HttpServer;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;

public class UltrasonicSensorServer {

    private static int passCount = 0;

    public static void main(String[] args) throws Exception {
        HttpServer server = HttpServer.create(new InetSocketAddress(8000), 0);
        server.createContext("/", new MyHandler());
        server.setExecutor(null); // Use the default executor
        server.start();
        System.out.println("Server started on port 8000");
    }

    static class MyHandler implements HttpHandler {
        @Override
        public void handle(HttpExchange exchange) throws IOException {
            String requestMethod = exchange.getRequestMethod();
            if (requestMethod.equalsIgnoreCase("POST")) {
                InputStream requestBody = exchange.getRequestBody();
                byte[] buffer = new byte[1024];
                int bytesRead = requestBody.read(buffer);
                String distanceString = new String(buffer, 0, bytesRead);
                int distance = Integer.parseInt(distanceString.trim());
                if (distance < 10) {
                    passCount++;
                }
                exchange.sendResponseHeaders(200, 0);
                OutputStream responseBody = exchange.getResponseBody();
                responseBody.close();
            } else if (requestMethod.equalsIgnoreCase("GET")) {
                String response = "<html><body><h1>Pass Count: " + passCount + "</h1></body></html>";
                exchange.sendResponseHeaders(200, response.getBytes().length);
                OutputStream responseBody = exchange.getResponseBody();
                responseBody.write(response.getBytes());
                responseBody.close();
            } else {
                exchange.sendResponseHeaders(405, 0);
            }
            exchange.close();
        }
    }
}


// TEST BUILD SO FAR OF WHAT I HAVE CAME UP WITH FROM TAKING FROM THE WEBSERVER PROJECT IN CLASS. AND ALSO EXAMPLES OF CODE FROM SOURCES AROUND THE INTERNET.