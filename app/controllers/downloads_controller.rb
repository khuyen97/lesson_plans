class DownloadsController < ApplicationController
  before_action only: [:index, :show]
  before_action :authenticate_user!

  def show
    if current_user.present?
      @lesson = Lesson.find_by id: params[:lesson_id]
      respond_to do |format|
        format.html
        format.pdf do
          render pdf: "#{@lesson.title_content}_#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}",
            template: "downloads/show.html.erb",
            disposition: "attachment",
            layout: "layouts/pdf.html.erb",
            locals: { lesson: @lesson },
            encoding: "UTF-8"
        end
      end
    end
  end
end
