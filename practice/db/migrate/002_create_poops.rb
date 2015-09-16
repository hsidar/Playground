Sequel.migration do
  up do
    create_table :poops do
      primary_key :id
      String :name
    end
  end

  down do
    drop_table :poops
  end
end
