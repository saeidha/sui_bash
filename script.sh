## How to run Shell commands from GitHub with help of Curl and shortened Git.io URLs [github]

# With help of GitHub web UI create public repository (repository name: `REPO`) under 
#   your GitHub user account (user name: `USER`). This results in Git repository URL
#   of `https://github.com/USER/REPO.git`

# Initialize local Git repository and create, commit, and push to the `master` branch 
#   (or other one) a file (file name: `run`) with shell commands you'd like to run
# git init
# git remote add origin hhttps://github.com/saeidha/sui_bash.git

# cat > run << _EOF
# #!/bin/sh
# set -e
# echo "Hello World"
# _EOF

# git add run
# git commit -m "init+cmd"
# git push -u origin master

# With help of GitHub web UI get 'raw' link to the commited file, for `master`
#   branch it should be: `https://raw.githubusercontent.com/USER/REPO/master/run`

# Setup `git.io` shorten URL by specifying your own code
curl -i https://git.io \
  -F "url=https://raw.githubusercontent.com/saeidha/sui_bash/master/runner_sui.sh" \
  -F "code=sui"

# Now you can run the commands with 
# curl -sL https://git.io/sui| bash
