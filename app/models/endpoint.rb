class Endpoint < ActiveRecord::Base

  validates_presence_of :name, :path, :method

  validates_length_of :name, :within => 3..20

  validates_inclusion_of :method, in: %w( get post put delete ), message: "method %s is not a valid method"

end
