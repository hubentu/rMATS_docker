FROM continuumio/miniconda

RUN conda config --add channels conda-forge
RUN conda config --add channels bioconda

RUN conda install pysam samtools STAR

WORKDIR /opt
RUN wget http://downloads.sourceforge.net/project/rnaseq-mats/MATS/rMATS.4.0.2.tgz
RUN tar xvf rMATS.4.0.2.tgz
RUN chmod +x /opt/rMATS.4.0.2/rMATS-turbo-Linux-UCS4/rmats.py && ln -s /opt/rMATS.4.0.2/rMATS-turbo-Linux-UCS4/rmats.py /opt/conda/bin/

COPY rmats_bam.sh /opt/conda/bin/
