curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash

source ~/.bashrc

echo "Installing latest Node.js LTS..."
nvm install --lts
echo -n "Node.js version: "
node --version
echo -n "NPM version: "
npm --version
