# Video Similarity API

Note for Tu

- Add your code in services
- Save checkpoints in [src/models](./src/models/)
- The [main](./src/services/main.py) file downloads the video and stores in [src/videos/tmp](./src/videos/tmp/)
- Try and call just one funtion in main file that returns similarity score from your code.

---

### API

- Enpoint `locahost:5000/predict`
- Payload

```json
{
  "payload": {
    "video_url": "URL Placeholder"
  }
}
```

- Response

```json
{
  "payload": {
    "isSimilar": 1
  }
}
```

---

### Deployment

```bash
docker compose up
```
