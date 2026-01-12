FROM runpod/worker-comfyui:5.1.0-base

WORKDIR /comfyui/custom_nodes

# Impact Pack (version compatible)
RUN git clone https://github.com/ltdrdata/ComfyUI-Impact-Pack.git && \
    cd ComfyUI-Impact-Pack && \
    uv pip install -r requirements.txt

# Florence2
RUN git clone https://github.com/kijai/ComfyUI-Florence2.git && \
    cd ComfyUI-Florence2 && \
    uv pip install -r requirements.txt || true

# SAM2 (Segment Anything 2)
RUN git clone https://github.com/kijai/ComfyUI-segment-anything-2.git && \
    cd ComfyUI-segment-anything-2 && \
    uv pip install -r requirements.txt || true

# Art Venture (LoadImageFromUrl, JSON utils, etc.)
RUN git clone https://github.com/sipherxyz/comfyui-art-venture.git && \
    cd comfyui-art-venture && \
    uv pip install -r requirements.txt || true

WORKDIR /
