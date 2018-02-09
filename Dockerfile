ARG branch=master
ARG version

FROM misenko/bio-class:${version}

ENV name="bio-class-age"
ENV install_dir="/opt/${name}"

LABEL application=${name} \
      description="BIO Analysis of gene expression class image" \
      maintainer="kimle@cesnet.cz" \
      version=${version}

SHELL ["/bin/bash", "-c"]

RUN mkdir -p ${install_dir}

COPY bin ${install_dir}/bin/
COPY install ${install_dir}/install/
COPY conf ${install_dir}/conf/
COPY common ${install_dir}/common/

RUN ${install_dir}/install/main.sh

EXPOSE 8787 22

ENTRYPOINT /opt/bio-class-age/bin/wrapper.sh
