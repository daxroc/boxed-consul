#
# Cookbook Name:: boxed-consul
# Recipe:: client
#
# Copyright 2015, Damien Roche
#
# All rights reserved - Do Not Redistribute
#

node.default['consul']['config']['bootstrap_expect'] = 0 
node.default['consul']['config']['server'] = false
include_recipe 'consul::default'

