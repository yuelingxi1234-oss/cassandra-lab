#!/bin/bash
echo "🚀 Setting up Cassandra lab environment..."

# 启动 Cassandra
docker-compose up -d

# 等待 Cassandra 启动
echo "⏳ Waiting for Cassandra to start..."
sleep 30

# 下载作业数据文件
echo "📥 Downloading lab data files..."
wget -O DBLP-Lab2.tar.gz https://example.com/DBLP-Lab2.tar.gz

# 解压文件
tar xzvf DBLP-Lab2.tar.gz

echo "✅ Setup complete! Cassandra is running."
echo "🔗 Connect with: docker exec -it cassandra-lab-cassandra-1 cqlsh"
