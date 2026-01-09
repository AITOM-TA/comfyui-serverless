FROM runpod/worker-comfyui:5.1.0-base

# Installer les autres custom nodes via le registry
RUN comfy-node-install \
    comfyui-florence2 \
    comfyui-segment-anything-2 \
    comfyui-kjnodes \
    rgthree-comfy \
    comfyui_essentials \
    masquerade-nodes-comfyui

# Installer Impact Pack directement depuis GitHub (dernière version)
WORKDIR /comfyui/custom_nodes
RUN git clone https://github.com/ltdrdata/ComfyUI-Impact-Pack.git && \
    cd ComfyUI-Impact-Pack && \
    pip install -r requirements.txt && \
    python install.py
WORKDIR /
