## Overview

A super simple RESTful api created using Flask. The idea is to have a simple api that can be used with pipeline demos and proof of concepts.

## Installation

Requirements:

```sh
python -m venv ./venv
source .venv/bin/activate
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

Flask will run on http://127.0.0.1:5000/.

```sh
$ curl 127.0.0.1:5000/
[{"id":1,"name":"Monday"},{"id":2,"name":"Tuesday"},{"id":3,"name":"Wednesday"},{"id":4,"name":"Thursday"},{"id":5,"name":"Friday"},{"id":6,"name":"Saturday"},{"id":7,"name":"Sunday"}]
```

To return a single day pass in a number with Monday starting at 1.

```sh
$ curl 127.0.0.1:5000/2
{"day":{"id":2,"name":"Tuesday"}}
```

Days will also accept a post message.

```sh
$ curl -X POST 127.0.0.1:5000/
{"success":true}
```
