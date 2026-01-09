FROM runpod/worker-comfyui:5.1.0-base

# Installer les custom nodes requis pour le workflow
RUN comfy-node-install \
    comfyui-impact-pack \
    comfyui-florence2 \
    comfyui-segment-anything-2 \
    comfyui-kjnodes \
    rgthree-comfy
