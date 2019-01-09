#! /usr/bin/python
#
def app(environ, start_response):
    query_str = environ['QUERY_STRING']
    parameters = query_str.split("&")
    result = "\n".join(parameters)
    status = '200 OK'
    response_headers = [('Content-type', 'text/plain')]
    start_response(status, response_headers)
    return [result]
