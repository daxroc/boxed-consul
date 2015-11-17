#
# Cookbook Name:: boxed-consul
# Recipe:: default
#
# Copyright 2015, Damien Roche
#
# All rights reserved - Do Not Redistribute
#

node.default['consul']['config']['bootstrap_expect'] = node['consul-cluster']['config']['bootstrap_expect']
node.default['consul']['config']['server'] = true
include_recipe 'consul::default'
