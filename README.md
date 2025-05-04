# 2025 Cloud Native HW4

本專案示範如何透過 Docker 打包並執行一個簡單的 Flask 應用。

---

## 建立 Docker Image

請在專案根目錄執行以下指令，產生名為 `cloud-hw4-app` 的 image：

```bash
docker build -t cloud-hw4-app .

---

##  執行 Docker Container

建置完成後，請使用以下指令啟動 container，將容器內部的 5000 port 映射到本機的 5000 port：

```bash
docker run -p 5000:5000 cloud-hw4-app