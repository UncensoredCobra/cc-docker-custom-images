# Must match the build-arg key used in the workflow
ARG EXTRA_PACKAGES=""

# Installs the extra packages if provided, safely skipping if left empty
RUN apt-get update && apt-get install -y $EXTRA_PACKAGES 
