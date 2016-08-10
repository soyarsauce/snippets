# Configuring
aws configure

# Copying - aws s3 cp [file] s3://[bucket name]
aws s3 cp foo.mp4 s3://bar-videos

# Syncing
aws s3 sync ./ s3://bucket-name