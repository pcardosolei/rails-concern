module DataAttributes
  extend ActiveSupport::Concern

  included do
    def set_string_attribute(attribute_name, value)
      self[attribute_name] = value.to_s
    end
  end

  def value_present(attribute_name)
    !self[attribute_name].blank?
  end
end
