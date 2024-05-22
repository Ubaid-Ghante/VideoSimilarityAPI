FROM pytorch/pytorch:1.10.0-cuda11.3-cudnn8-runtime

RUN python -m pip install --upgrade pip
RUN pip install flask
RUN pip install flask-cors

RUN apt-get update 
RUN pip install gpustat 
RUN apt-get -y install tmux 
RUN apt-get -y install git 
RUN apt-get -y install gcc 
RUN apt-get -y install libsm6 
RUN apt-get -y install libxext-dev 
RUN apt-get -y install libxrender1 
RUN apt-get -y install libglib2.0-dev 
RUN apt-get -y install default-jre 
RUN pip install transformers==4.27.0 
RUN pip install lmdb==1.4.0 
RUN pip install clip 
RUN pip install ftfy==6.1.1 
RUN pip install albumentations==1.3.0 
RUN pip install classy-vision==0.6.0 
RUN pip install gpustat==1.0.0 
RUN conda install -y faiss-gpu -c pytorch 
RUN pip install yapf==0.32.0 
RUN pip install pytorch-lightning==1.5.7 
RUN pip install pytorch-metric-learning==0.9.99 
RUN pip install torchmetrics==0.11.0 
RUN pip install tslearn==0.5.2 
RUN pip install tensorboard==2.11.2 
RUN pip install tensorboardx==2.5.1 
RUN pip install torchsnooper==0.8 
RUN pip install yacs==0.1.8 
RUN pip install setuptools==59.5.0 
RUN conda install -y pytorch==1.11.0 torchvision==0.12.0 cudatoolkit=11.3 -c pytorch 
RUN pip install -U openmim 
RUN mim install mmcv==1.7.1 
RUN pip install timm==0.6.12 
RUN pip install augly==1.0.0 
RUN pip install matplotlib 
RUN pip install loguru 

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1

WORKDIR /api

COPY entrypoint.sh /api/entrypoint.sh
COPY src /api/src

RUN chmod +x entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]