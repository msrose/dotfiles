curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

source ~/.zshrc

echo "Installing latest Node.js LTS..."
nvm install --lts
echo -n "Node.js version: "
node --version
echo -n "NPM version: "
npm --version
