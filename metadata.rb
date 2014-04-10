# Encoding: utf-8
name 'rax-mag-patch'
maintainer 'Rackspace'
maintainer_email 'none'
license 'Apache 2.0'
description 'Installs/Configures magento-ce-varnish-18'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.0'

depends 'apt'
depends 'git'
depends 'magento'
depends 'varnish'
depends 'yum'
