<%= f.label :name %>
<%= f.text_field :name, autofocus: true %>

<%= f.label :email %>
<%= f.email_field :email %>
class CreateRegistrations < ActiveRecord::Migration[7.0]
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :email
      t.string :how_heard
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
