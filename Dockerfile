FROM scratch
# Image base https://hub.docker.com/_/scratch

# About image
LABEL maintainer="Aécio Pires" \
      date_create="12/16/2023" \
      version="1.0.0" \
      description="Web Golang application" \
      licensce="GPL-3.0"

# Copy file to image
COPY bin/kube-pires kube-pires
COPY css/ css
COPY images/ images
COPY templates/ templates

# Exposing port of application
EXPOSE 3000

# Define entrypoint
ENTRYPOINT ["./kube-pires"]
