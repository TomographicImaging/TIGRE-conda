set -xe 

cd ${SRC_DIR}/Python

export CUDA_HOME=/usr/local/cuda-9.2 
${PYTHON} setup.py install