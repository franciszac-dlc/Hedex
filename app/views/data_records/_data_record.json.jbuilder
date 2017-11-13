json.extract! data_record, :id, :institution_id, :release_date, :acadyr_termno, :stud_count, :enrolled, :graduated, :cost_per_stud, :created_at, :updated_at
json.url data_record_url(data_record, format: :json)
