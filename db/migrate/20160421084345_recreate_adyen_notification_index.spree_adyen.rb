# This migration comes from spree_adyen (originally 20151123000000)
class RecreateAdyenNotificationIndex < ActiveRecord::Migration
  def change
    add_index :adyen_notifications, [:psp_reference, :event_code, :success], unique: true, name: "adyen_notification_uniqueness"
  end
end
