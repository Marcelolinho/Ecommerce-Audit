package utils

import java.net.http.HttpClient

def api = HttpClient.configure {
    request.uri
}