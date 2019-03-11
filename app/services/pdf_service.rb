class PdfService
  def initialize lesson
    @lesson = lesson
  end

  def to_pdf
    kit = PDFKit.new(as_html, page_size: 'A4')
    kit.to_file("#{Rails.root}/public/lesson.pdf")
  end

  def filename
    "#{lesson.title_content}.pdf"
  end

  attr_reader :lesson

  def as_html
    render template: "downloads/show", layout: "lesson_pdf",
        locals: {lesson: lesson}
  end
end
