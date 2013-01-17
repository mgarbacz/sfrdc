module PageContentConfig
  PC_DYNAMIC_FIELDS =
    YAML.load(File.open("#{Rails.root}/config/page_content_dynamic_fields.yml"))
end
