class DownloadsController < ApplicationController
  before_action only: [:index, :show]
  layout "pdf"

  def show
    @lesson = Lesson.find_by id: params[:lesson_id]
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "#{@lesson.title_content}_#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}",
          template: "downloads/show",
          disposition: "attachment",
          layout: "layouts/pdf",
          locals: { lesson: @lesson },
          encoding: "UTF-8"
      end
    end
  end
end
