#!/bin/bash

# Oil Shipment System Startup Script

echo "🚀 Starting Oil Shipment AI Ops System..."

# Check if Docker is running
if ! docker info > /dev/null 2>&1; then
    echo "❌ Docker is not running. Please start Docker Desktop first."
    exit 1
fi

# Check if .env file exists, if not create from template
if [ ! -f .env ]; then
    echo "📝 Creating .env file from template..."
    cp env-example.txt .env
    echo "✅ .env file created. You can edit it if needed."
fi

# Stop any existing containers
echo "🛑 Stopping existing containers..."
docker compose down

# Build and start the system
echo "🔨 Building and starting containers..."
docker compose up -d --build

# Wait for services to be healthy
echo "⏳ Waiting for services to start..."
sleep 10

# Check if services are running
if docker compose ps | grep -q "Up"; then
    echo ""
    echo "✅ System started successfully!"
    echo ""
    echo "🌐 Frontend: http://localhost:5173"
    echo "🔧 API: http://localhost:8000"
    echo "📚 API Docs: http://localhost:8000/docs"
    echo "🗄️ Database: localhost:5432"
    echo ""
    echo "📊 To view logs: docker compose logs -f"
    echo "🛑 To stop: docker compose down"
else
    echo "❌ Some services failed to start. Check logs with: docker compose logs"
    exit 1
fi
