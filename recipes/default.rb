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
node.default['consul']['config']['bind_addr'] = node['network']['interfaces']['eth1']['addresses'].keys[1]
node.default['consul']['config']['encrypt'] = data_bag_item('secrets', 'consul')['encrypt']

include_recipe 'consul::default'
