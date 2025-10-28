from flask import Flask, jsonify
from flask_cors import CORS
import os

app = Flask(__name__)
CORS(app) 

@app.route("/health")
def health_check():
    return jsonify({"status": "ok"}), 200


@app.route("/api/health")
def api_health():
    return jsonify({"status": "ok"}), 200

@app.route("/api")
def root():
    return jsonify({"message": os.environ.get("MESSAGE", "Hello from Backend!")})


@app.route("/")
def index():
    return jsonify({"service": "DreamSquad Backend", "status": "running"})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)