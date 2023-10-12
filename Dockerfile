FROM ubuntu

ARG CLANG_VERSION

RUN apt update && apt install -y gnupg wget && \
    mkdir -p "/etc/apt/keyrings" && \
    wget -O- https://apt.llvm.org/llvm-snapshot.gpg.key | gpg --dearmor > /etc/apt/keyrings/llvm.gpg && \
    . "/etc/os-release" && \
    echo "deb [signed-by=/etc/apt/keyrings/llvm.gpg] http://apt.llvm.org/${VERSION_CODENAME}/ llvm-toolchain-${VERSION_CODENAME}-${CLANG_VERSION} main" >> /etc/apt/sources.list && \
    apt update && \
    apt install -y clang-format-${CLANG_VERSION} && \
    rm -rf /var/lib/apt/lists/*
