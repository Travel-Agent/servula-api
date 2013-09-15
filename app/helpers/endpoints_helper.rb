module EndpointsHelper
  def method_options_for_select(selected = nil)
    methods = %w( get post put delete )
    options_for_select(methods, selected)
  end
end
