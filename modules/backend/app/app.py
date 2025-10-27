from flask import Flask, jsonify
import os

app = Flask(__name__)

@app.route("/health")
def health():
    return jsonify({"status":"ok"}), 200

@app.route("/")
def root():
    return jsonify({"message": os.environ.get("MESSAGE","Hello World")})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
