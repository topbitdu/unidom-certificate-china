class CreateUnidomChinaIdentityCards < ActiveRecord::Migration

  def change

    create_table :unidom_china_identity_cards, id: :uuid do |t|

      t.string :name,       null: false, default: '', limit: 200
      t.date   :birth_date, null: false, default: nil
      t.string :address,    null: false, default: '', limit: 200

      t.column :gender_code,           'char(1)',  null: false, default: '0'
      t.column :ethnicity_code,        'char(2)',  null: false, default: 'HA'
      t.column :identification_number, 'char(18)', null: false, default: nil

      # t.column :encrypted_identification_number, 'char(45)', null: false, default: nil
      # t.column :encryption_pepper,               'char(21)', null: false, default: nil

      t.string :issuing_authority_name, null: false, default: '', limit: 200
      t.date   :validity_from_date,     null: false, default: '1970-01-01'
      t.date   :validity_thru_date,     null: false, default: '3000-01-01'

      # t.string :slug, null: false, default: nil, limit: 200

      t.column   :state, 'char(1)', null: false, default: 'C'
      t.datetime :opened_at,        null: false, default: ::Time.utc(1970)
      t.datetime :closed_at,        null: false, default: ::Time.utc(3000)
      t.boolean  :defunct,          null: false, default: false
      t.jsonb    :notation,         null: false, default: {}

      t.timestamps null: false

    end

    add_index :unidom_china_identity_cards, [ :identification_number, :validity_from_date ], unique: true, name: 'index_unidom_china_identity_cards_on_identification_number'
    # add_index :unidom_china_identity_cards, :encrypted_identification_number
    # add_index :unidom_china_identity_cards, :slug, unique: true

  end

end
