# Run checks
sudo gitlab-rake gitlab:check RAILS_ENV=production

# Resync authorized_keys files for user pub keys
sudo gitlab-rake gitlab:shell:setup RAILS_ENV=production

# Fix git user details
sudo -u git -H "/opt/gitlab/embedded/bin/git" config --global user.name  "GitLab"
sudo -u git -H "/opt/gitlab/embedded/bin/git" config --global user.email "gitlab@git.space.eng.unimelb.edu.au"
sudo -u git -H "/opt/gitlab/embedded/bin/git" config --global core.autocrlf "input"

# Update configs
/etc/gitlab/gitlab.rb

## Then load in new settings
sudo gitlab-ctl reconfigure