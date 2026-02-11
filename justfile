proto:
    uv run -m grpc_tools.protoc -I=./proto --python_out=./src/sbsvf_api --grpc_python_out=./src/sbsvf_api ./proto/*.proto
    sed -i 's/^import \(.\+\) as/from . import \1 as/' src/sbsvf_api/*.py

clean:
    rm -rf src/sbsvf_api/*pb2*.py
