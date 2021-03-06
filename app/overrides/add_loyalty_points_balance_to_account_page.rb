Deface::Override.new(
  virtual_path: 'spree/users/show',
  name: 'add_loyalty_points_balance_to_account_page',
  insert_after: "#user-info",
  text: "
    <dl id='loyalty-points-info'>
      <dt><%= I18n.t('spree.loyalty_points_balance') %></dt>
      <dd><%= @user.loyalty_points_balance %> (<%= link_to I18n.t('spree.details'), spree.loyalty_points_path %>)</dd>
    </dl>
  "
)
