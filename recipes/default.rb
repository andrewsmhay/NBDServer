#
# Cookbook Name:: NBDServer
# Recipe:: default
# Author:: Andrew Hay (andrew@cloudpassage.com)
#
# Copyright (C) 2013 CloudPassage, Inc.
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# NOTE - STILL A WORK IN PROGRESS
#
package 'libglib2.0-dev'
package 'pkg-config'
package 'build-essential'

# Download yara
remote_file '/tmp/' do
  source 'http://sourceforge.net/projects/nbd/files/nbd/3.3/nbd-3.3.tar.gz'
end
log 'NBDServer downloaded'

# Extract nbd tar.gz file
execute 'extractit NBDServer' do
  cwd '/tmp/'
  command 'tar -xvzf nbd-3.3.tar.gz'
end
execute 'config NBDServer' do
  cwd '/tmp/nbd-3.3/'
  command './configure'
  user 'root'
end
execute 'makeit NBDServer' do
  cwd '/tmp/nbd-3.3/'
  command './make && make install'
  user 'root'
end
execute 'probeit NBDServer' do
  command 'modprobe nbd'
  user 'root'
end
log 'Finished NBDServer installation'
log 'Use nbd-client to connect to client system'