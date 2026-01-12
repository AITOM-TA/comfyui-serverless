FROM runpod/worker-comfyui:5.1.0-base

# Installer TOUS les custom nodes via le registry (y compris Impact Pack)
RUN comfy-node-install \
    comfyui-impact-pack \
    comfyui-florence2 \
    comfyui-segment-anything-2 \

# Mettre à jour Impact Pack vers la dernière version GitHub
WORKDIR /comfyui/custom_nodes/ComfyUI-Impact-Pack
RUN git pull origin main || true
WORKDIR /
