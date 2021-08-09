<pre>
####################### SSH KEY FOR GIT ###################################
eval `ssh-agent -s` &amp;&amp; ssh-add -k
####################### To be added to git account settings ####################################### SSH KEY FOR GIT ###################################
eval `ssh-agent -s` &amp;&amp; ssh-add -k
####################### To be added to git account settings ################

export GIT_PARENT_DIR=~
export GIT_REPO_NAME=gitjupyter
export GIT_BRANCH_NAME=master
export GIT_USER=sbata1984
export GIT_EMAIL=h.hicham@hotmail.de
export GITHUB_ACCESS_TOKEN=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
export GIT_USER_UPSTREAM=sbata1984



############################################################################
#### DO NOT EDIT BELOW THIS LINE: derived variables
############################################################################

export GIT_REMOTE_URL=git@github.com:$GIT_USER/$GIT_REPO_NAME.git
export GIT_REMOTE_URL_HTTPS=https://github.com/$GIT_USER/$GIT_REPO_NAME.git
export GIT_REMOTE_UPSTREAM=$GIT_USER_UPSTREAM/$GIT_REPO_NAME


####################### Git Repo where notebooks will be pushed ############
cd $GIT_PARENT_DIR &amp;&amp; git clone $GIT_REMOTE_URL_HTTPS



####################### Change in jupyter config ###########################
if [ ! -f ~/.jupyter/jupyter_notebook_config.py ]; then
   jupyter notebook --generate-config
fi

echo &apos;c.NotebookApp.disable_check_xsrf = True&apos; &gt;&gt; ~/.jupyter/jupyter_notebook_config.py

cp $GIT_PARENT_DIR/githubcommit/config ~/.ssh/config
</pre>
