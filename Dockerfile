FROM python:3.11-slim



WORKDIR /app



# Installer Flask au build (pas dans le pod)

RUN pip install flask



# Lancer ton app Flask en one-liner

CMD ["python3", "-c", "from flask import Flask; app=Flask(__name__); exec('@app.route(\"/\")\\ndef home():\\n    return \"<h1>Hello Flask V1</h1>\"'); app.run(host='0.0.0.0', port=8080)"]


