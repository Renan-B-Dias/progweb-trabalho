module ApplicationHelper

  def select_course_options
    Course.pluck(:name, :id).unshift(["Escolha seu curso", nil])
  end

  def text_max_length
    250
  end

  def format_date(date)
    date.strftime("%d/%m/%Y")
  end

  def workload_format(workload)
    "#{workload} horas"
  end

end
