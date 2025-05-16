#!/bin/bash
# Inspector: Benz Seal
# Date: 2024-05-16
# Total Errors: 3
# Error 1 - Typo: 'User@dd' is not a command ➜ fixed with 'useradd'
# Error 2 - Password usage incorrect ➜ fixed with 'chpasswd'
# Error 3 - Missing sudo and feedback ➜ fixed and added confirmation

read -p "Enter Username: " user
read -p "Enter Password: " pwrd
read -p "Enter Group: " group

# Create group if not exists
if ! getent group "$group" > /dev/null; then
    sudo groupadd "$group"
    echo "Group $group created."
fi

# Create user with default shell
sudo useradd -m -s /bin/bash -G "$group" "$user"

# Set password securely
echo "$user:$pwrd" | sudo chpasswd

echo "User $user created and added to $group group."

