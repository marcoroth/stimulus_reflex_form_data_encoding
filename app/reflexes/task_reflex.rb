# frozen_string_literal: true

class TaskReflex < ApplicationReflex
  def create_task
    Task.create(task_params)
    @task_params = task_params
  end

  private

    def task_params
      params.require(:task).permit(:name)
    end
end
