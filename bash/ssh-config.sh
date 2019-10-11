# ~/.ssh/config
Host foo.bar
  User foo
  IdentityFile ~/.ssh/bar
  IdentitiesOnly yes


## thanks Pete H
# ssh reuse and keep connections open for 1h, so multiple connections to the same host connect instantly.
Host *
  ControlMaster auto
  ControlPath /tmp/ssh_mux_%h_%p_%r
  ControlPersist 1h
# wildcard host for identityfile actually works!
Host *.bleh.blah
  User foo
  IdentityFile ~/.ssh/bar
  IdentitiesOnly yes

# ec2 ssm
Host i-*
    ProxyCommand sh -c "aws ssm start-session --target %h --document-name AWS-StartSSHSession --parameters 'portNumber=%p'"