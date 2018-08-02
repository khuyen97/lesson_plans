json.extract! lesson, :id, :title_lesson, :title_unit, :title_content, :last_lesson_time, :last_lesson_content, :object, :intro_time, :intro_content, :practice_time, :practice_content, :working_time, :working_content, :diff_support, :diff_enrich, :assess_time, :assess_content, :review_time, :review_content, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)
