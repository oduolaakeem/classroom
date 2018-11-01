class CreateOrganizationWebhooks < ActiveRecord::Migration[5.1]
  def change
    create_table :organization_webhooks do |t|
      t.integer :github_webhook_id
      t.datetime :last_webhook_recieved

      t.timestamps
    end
    add_index :organization_webhooks, :github_webhook_id, unique: true
  end
end
