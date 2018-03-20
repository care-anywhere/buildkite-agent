FROM buildkite/agent:3.0

RUN apk add -U make

COPY . .

# install Go
RUN ./install_go.sh
RUN export PATH=${PATH}:/usr/local/go/bin

# install buffalo
RUN ./install_buffalo.sh

# install mage
RUN ./install_mage.sh

# install helm
RUN ./install_helm.sh

# install gcloud
RUN ./install_gcloud.sh

ENV GOPATH=/gocode
ENV CARE_ANYWHERE_PATH=${GOPATH}/src/github.com/arschles/care-anywhere-tools
RUN mkdir -p ${CARE_ANYWHERE_PATH}
WORKDIR ${CARE_ANYWHERE_PATH}
