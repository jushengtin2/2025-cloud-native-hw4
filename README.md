# 2025 Cloud Native HW4

本專案示範如何透過 Docker 打包並執行一個簡單的 Flask 應用。

---

## 建立 Docker Image

請在專案根目錄執行以下指令，產生名為 `cloud-hw4-app` 的 image：

```bash
docker build -t cloud-hw4-app .
```
---

## 執行 Docker Container

建置完成後，請使用以下指令啟動 container：

```bash
docker run -p 5000:5000 cloud-hw4-app
```

##  自動化流程與 Tag 設計說明
我的父資料夾下面有三個檔案
1. app.py (很簡單的flask)
2. Dockerfile (用來包成image用)
3. .github/workflows/docker.yml (用來跑github action)

當我們將程式碼 push 到 `main` 分支時，GitHub Actions 就會自動執行 `.github/workflows/docker.yml`，流程如下：

1. 拉取程式碼
2. 安裝 Buildx 幫我們打包成image
3. 使用 Dockerfile 建置 image
4. 登入 Docker Hub (用我們放在github repo的帳密)
5. 將建好的 image 推送至 `jushengtin2/2025cloud` repository

這個流程會在每次 push 時自動執行，完全不需要手動操作。

---

###  Image Tag 的命名邏輯

| Tag 名稱 | 說明 |
|----------|------|
| `latest` | 這個是預設版本但可以改 |
| `forhw`  | 這是我作業用的 tag |


Tag的設計可以讓我們快速區分不同目的的 image，也方便在 Docker Hub 上管理。