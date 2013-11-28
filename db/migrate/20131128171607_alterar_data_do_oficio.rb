class AlterarDataDoOficio < ActiveRecord::Migration
  def up
    change_column(:oficios, :data, :date)
  end

  def down
  end
end
