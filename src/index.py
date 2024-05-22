from flask import Flask, jsonify, request
from flask_cors import CORS

from src.services.main import predict_video_similarity

app = Flask(__name__)
CORS(app)

app.json.sort_keys = False

@app.route('/', methods=['GET'])
def index():
    return "Video Similarity Model API"

@app.route('/predict', methods=['POST'])
def predict():
    data = request.json
    video_url = data.get('video_url')
    similarity_bol = predict_video_similarity(video_url)
    return jsonify({"payload": {
        "isSimilar": similarity_bol
    }})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)