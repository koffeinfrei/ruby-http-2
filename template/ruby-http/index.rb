# Copyright (c) Alex Ellis 2017. All rights reserved.
# Licensed under the MIT license. See LICENSE file in the project root for full license information.

require_relative 'function/handler'

require 'sinatra'

set :port, 5000
# set :bind, '0.0.0.0'

handler = Handler.new

get '/*' do
  body, headers = handler.run(request.body, request.env)

  [200, headers, body]
end

post '/*' do
  body, headers = handler.run(request.body, request.env)

  [200, headers, body]
end

put '/*' do
  body, headers = handler.run(request.body, request.env)

  [200, headers, body]
end

delete '/*' do
  body, headers = handler.run(request.body, request.env)

  [200, headers, body]
end
