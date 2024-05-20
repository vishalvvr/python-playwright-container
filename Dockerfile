FROM quay.io/fedora/fedora-minimal:39

WORKDIR /app

COPY requirements.txt .
COPY sysdependencies.txt .

# Install dependencies
RUN microdnf update -y && \
    microdnf -y install --setopt=install_weak_deps=0 --nodocs $(cat sysdependencies.txt) && \
    microdnf clean all -y && \
    pip3 install -r requirements.txt && \
    pip cache purge && \
    playwright install && \
    rm -rf requirements.txt sysdependencies.txt
