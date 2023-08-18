FROM ubuntu:rolling

RUN apt-get update && \
    apt-get install -y lsb-release wget software-properties-common gnupg && \
    wget --no-check-certificate https://apt.llvm.org/llvm.sh && \
    chmod +x llvm.sh && \
    ./llvm.sh 17 all && \
    apt-get install -y libmlir-17-dev mlir-17-tools cmake git && \
    apt-get purge -y --auto-remove lsb-release wget software-properties-common gnupg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*