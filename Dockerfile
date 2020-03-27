FROM continuumio/miniconda

RUN conda config --add channels conda-forge
RUN conda config --add channels bioconda

RUN conda install pysam samtools STAR libgfortran numpy
RUN apt-get update && apt-get install -y --no-install-recommends libgfortran4 libgsl-dev libblas-dev liblapack-dev libgomp1
RUN ln -s /opt/conda/lib/libgfortran.so.3 /usr/lib/x86_64-linux-gnu/libgfortran.so.3
RUN ln -s /usr/lib/x86_64-linux-gnu/libgsl.so /usr/lib/x86_64-linux-gnu/libgsl.so.0

WORKDIR /opt
RUN wget http://downloads.sourceforge.net/project/rnaseq-mats/MATS/rMATS.4.0.2.tgz
RUN tar xvf rMATS.4.0.2.tgz

COPY rmats_bam.sh /opt/conda/bin/
