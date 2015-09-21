class AddIdsToJobCandidates < ActiveRecord::Migration
  def change
    add_column :job_candidates, :job_id, :int
    add_column :job_candidates, :candidate_id, :int
  end
end
