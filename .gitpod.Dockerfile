FROM gitpod/workspace-base

USER root

RUN sudo apt install -y python3-pip
RUN python3 -m pip install scons
RUN git clone https://github.com/emscripten-core/emsdk.git
RUN cd emsdk
RUN chmod +x ./emsdk
RUN ./emsdk install latest
RUN ./emsdk activate latest
RUN source ./emsdk_env.sh