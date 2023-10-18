module HasDynamicAttribute
  extend ActiveSupport::Concern

  included do
    def set_string_attribute(attribute_name, value)
      # self[attribute_name] = value.to_s
      self.class.send(:attr_accessor, attribute_name)
      instance_variable_set("@#{attribute_name}", value)
      
      # save attribute solution
      save_attribute(attribute_name, value)
    end
  end

  def value_present(attribute_name)
    # !self[attribute_name].blank?

    !instance_variable_get("@#{attribute_name}").blank?
  end
end
