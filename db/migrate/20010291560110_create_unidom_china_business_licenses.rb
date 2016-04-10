class CreateUnidomChinaBusinessLicenses < ActiveRecord::Migration

  def change

    create_table :unidom_china_business_licenses, id: :uuid do |t|

      t.column :registration_number, 'char(15)', null: false, default: nil

      t.string :name,    null: false, default: '', limit: 16
      t.string :address, null: false, default: '', limit: 200

      t.string :legal_representative_name, null: false, default: '', limit: 200
      t.string :issuing_authority_name,    null: false, default: '', limit: 200

      t.date :validity_from_date, null: false, default: '1970-01-01'
      t.date :validity_thru_date, null: false, default: '3000-01-01'

      t.column   :state, 'char(1)', null: false, default: 'C'
      t.datetime :opened_at,        null: false, default: ::Time.utc(1970)
      t.datetime :closed_at,        null: false, default: ::Time.utc(3000)
      t.boolean  :defunct,          null: false, default: false
      t.jsonb    :notation,         null: false, default: {}

      t.timestamps null: false

    end

    add_index :unidom_china_business_licenses, [ :registration_number, :validity_from_date ], unique: true, name: 'index_unidom_china_business_licenses_on_registration_number'

  end

end
