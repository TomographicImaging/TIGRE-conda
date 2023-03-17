set -xe 

#set nvcc_version=9.2
#check version matches

NVCC_FOUND=`nvcc --version | egrep -o "V[0-9]+.[0-9]" | cut -c2-`

if [ ${NVCC_FOUND} != ${nvcc_version} ]; then
    echo "CUDA version ${nvcc_version} targetted. CUDA version ${NVCC_FOUND} found."
    echo "break"
    exit 1
fi

cd ${SRC_DIR}/Python

${PYTHON} setup.py install
