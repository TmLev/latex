# Print commands and exit on fail
set -e -x

# Timezone configuration
DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

apt-get install -y \
  make \
  gcc \
  g++ \
  curl \
  git \
  vim \
  ssh \
  ca-certificates \
  openssh-server \
  rsync \
  xzdec \
  texlive-latex-extra \
  latexmk \
  texlive-lang-all

# Install `cpanm`
yes | cpan -f App::cpanminus

# Install `latexindent`
git clone https://github.com/cmhughes/latexindent.pl.git /.latexindent
yes | perl /.latexindent/helper-scripts/latexindent-module-installer.pl
