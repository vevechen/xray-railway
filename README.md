# xray-railway

Minimal Xray (VLESS + WebSocket) container for Railway.

Railway terminates TLS at its edge, so Xray itself runs plain WS (`security: none`).
The client connects with TLS on 443 to the generated `*.up.railway.app` domain.

## Required Railway variables

- `UUID` — VLESS client id
- `WS_PATH` — WebSocket path, e.g. `/f08941`

`PORT` is provided by Railway automatically.
