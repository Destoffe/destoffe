class ApplicationController < ActionController::Base

#cert = LetsEncrypt::Certificate.find_by(domain: 'destoffe.se')

#cert = LetsEncrypt::Certificate.create(domain: 'destoffe.se') cert.get # alias `verify && issue`
#cert.active? # => true	
#cert = LetsEncrypt::Certificate.find_by(domain: 'destoffe.se')
#cert.verify

#cert = LetsEncrypt::Certificate.find_by(domain: 'destoffe.se')
#cert.issue

#cert = LetsEncrypt::Certificate.find_by(domain: 'destoffe.se')
#cert.renew
end
