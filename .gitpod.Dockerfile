FROM gitpod/workspace-base

USER root

RUN sudo apt install -y python3-pip
RUN python3 -m pip install scons
RUN git clone https://github.com/emscripten-core/emsdk.git \
    && cd emsdk \
    && chmod +x ./emsdk \
    && ./emsdk install latest \
    && ./emsdk activate latest \
    && source ./emsdk_env.sh