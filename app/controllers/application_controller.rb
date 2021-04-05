class ApplicationController < ActionController::Base
  cert = LetsEncrypt::Certificate.create(domain: 'destoffe.se')
  cert.get

  cert = LetsEncrypt::Certificate.find_by(domain: 'destoffe.se')
  cert.verify

  cert = LetsEncrypt::Certificate.find_by(domain: 'destoffe..se')
  cert.issue
end
