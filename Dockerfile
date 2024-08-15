# 使用官方 Python 镜像
FROM python:3.10-slim

# 设置工作目录
WORKDIR /app

# 复制当前目录内容到工作目录中
COPY . .

# 安装 Chainlit
RUN pip install --no-cache-dir chainlit

# 暴露端口 3009
EXPOSE 3009

# 运行 Chainlit 并监听 3009 端口
CMD ["chainlit", "run", "demo.py", "-w", "--port", "3009"]
