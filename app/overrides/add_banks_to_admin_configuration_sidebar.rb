Spree::Backend::Config.configure do |config|
  config.menu_items.detect { |menu_item|
    menu_item.label == :settings
  }.sections << :banks
end

Deface::Override.new(
  virtual_path: 'spree/admin/shared/_settings_sub_menu',
  name: 'add_banks_to_admin_configuration_sidebar',
  insert_bottom: "[data-hook='admin_settings_sub_tabs']",
  text: "<%= tab :banks, url: spree.admin_banks_path, match_path: /banks/ %>",
)
