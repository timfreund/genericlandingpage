# Generic Landing Page

This project is a default [jekyll](https://jekyllrb.com/) site that's
been altered to have a prominent front page rather than default to a
blog.  It also has a newsletter and newsletter archive section.

The site can use
[Jekyll's default docker image](https://hub.docker.com/r/jekyll/jekyll/)
for convenient local development.  To run the site on port 4000:

    ./_docker.sh

To get help:

    ./_docker.sh jekyll --help

Once the site is running, [open it in your browser](http://localhost:4000)

## Production deployment

To deploy the generated site to production, you'll need to edit the
_deploy.sh script and change the last line to suit your needs.  I use
rsync to copy the site to a server running Apache, but maybe you'll
FTP the files somewhere or upload them to S3 to let Amazon host the
site for you.

### Specific notes on production deployment

You can deploy the site to a small webserver or S3 bucket and then
configure [Amazon CloudFront](https://aws.amazon.com/cloudfront) as a
CDN.  Once in CloudFront, you can deploy a SSL cert for free with
[AWS Key Management Service](https://aws.amazon.com/kms/).  The
combination of CloudFront and KMS will ensure that users always have a
fast and secure experience on your site.

To do this, deploy the site to origin.example.org, then configure
CloudFront to serve example.org and use origin.example.org as the
source:

USER --> Amazon CloudFront --> origin.example.org

Note that CloudFront only checks for updated content every 24 hours by
default, so change the settings accordingly if you are iterating on
a site with greater frequency.
