class HomeworksController < ApplicationController
  class HomeworksController < ApplicationController
    before_action :set_homework, only: %i[show edit update destroy]
  
    def index
      @homeworks = Homework.order(due_date: :asc)
    end
  
    def new
      @homework = Homework.new
    end
  
    def create
      @homework = Homework.new(homework_params)
      if @homework.save
        redirect_to homeworks_path, notice: '宿題を追加しました！'
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    def show; end
  
    def edit; end
  
    def update
      if @homework.update(homework_params)
        redirect_to homeworks_path, notice: '宿題を更新しました！'
      else
        render :edit, status: :unprocessable_entity
      end
    end
  
    def destroy
      @homework.destroy
      redirect_to homeworks_path, notice: '宿題を削除しました。'
    end
  
    private
  
    def set_homework
      @homework = Homework.find(params[:id])
    end
  
    def homework_params
      params.require(:homework).permit(:title, :description, :subject, :due_date, :priority, :status)
    end
  end
end
