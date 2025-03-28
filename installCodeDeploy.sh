sudo apt update -y
sudo apt install ruby wget -y

# Download the CodeDeploy agent
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install

# Make it executable
chmod +x ./install

# Install the agent
sudo ./install auto

# Verify the installation
sudo systemctl start codedeploy-agent
sudo systemctl enable codedeploy-agent
sudo systemctl status codedeploy-agent
