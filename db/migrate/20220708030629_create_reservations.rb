class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.date :date, null: false
      t.references :schedule, foreign_key: true, null: false, index: { unique: true }
      t.references :sheet, foreign_key: true, null: false, index: { unique: true }
      t.string :email, null: false, limit: 255, comment: '予約者メールアドレス'
      t.string :name, null: false, limit: 50, comment: '予約者名'
      t.timestamps
    end
  end
end
