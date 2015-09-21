class CreateJobCandidates < ActiveRecord::Migration
  def change
    create_table :job_candidates do |t|

      t.timestamps
    end
  end
end
