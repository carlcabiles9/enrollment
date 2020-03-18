class DeleteAllJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    Student.delete_all
  end
end
