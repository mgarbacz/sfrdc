module PageContentConfig
  DYNAMIC_ATTRIBUTES =
    YAML.load(File.open("#{Rails.root}/config/dynamic_attributes.yml"))
end
