proto:
    uv run -m grpc_tools.protoc -I=./proto --python_out=./src/carla_api --grpc_python_out=./src/carla_api ./proto/*.proto
