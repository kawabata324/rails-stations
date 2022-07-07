class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|

      t.reference :movie, foreign_key: true, null: false
      # Todo 上映開始時間と上映終了時間を追加した上でマイグレーションする
      t.timestamps
    end
  end
end
