## Overview

A super simple RESTful api created using Flask. The idea is to have a simple api that can be used with pipeline demos and proof of concepts.

## Installation

Requirements:

```sh
virtualenv -p python3 venv
source venv/bin/activate
```

Next, run

```sh
pip install -r requirements.txt
```

to get the dependencies.

Finally run the api with

```sh
python api.py
```

## Example

Flask will run on http://127.0.0.1:5000/. Only one endpoint is available at ``days``.

```sh
$ curl 127.0.0.1:5000/days
[{"id":1,"name":"Monday"},{"id":2,"name":"Tuesday"},{"id":3,"name":"Wednesday"},{"id":4,"name":"Thursday"},{"id":5,"name":"Friday"},{"id":6,"name":"Saturday"},{"id":7,"name":"Sunday"}]
```

To return a single day pass in a number with Monday starting at 1.

```sh
$ curl 127.0.0.1:5000/days/2
{"day":{"id":2,"name":"Tuesday"}}
```

Days will also accept a post message.

```sh
$ curl -X POST 127.0.0.1:5000/days
{"success":true}
```

```sh
$ curl 127.0.0.1:5000/home
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<title>404 Not Found</title>
<h1>Not Found</h1>
<p>The requested URL was not found on the server. If you entered the URL manually please check your spelling and try again.</p>
```
