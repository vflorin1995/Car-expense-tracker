class ExpensesController < ApplicationController
  before_action :set_expense, only: %i[show edit update destroy]

  # GET /expenses or /expenses.json
  def index
    @expenses = Expense.where(AuthorId: current_user.id).order('created_at DESC')
  end

  # GET /expenses/new
  def new
    @expense = Expense.new
  end

  # POST /expenses or /expenses.json
  def create
    @expense = Expense.new(Name: params.dig(:expense, :Name), Amount: params.dig(:expense, :Amount), AuthorId: current_user.id)

    respond_to do |format|
      if @expense.save
        format.html { redirect_to group_expenses_path, notice: 'Expense was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expenses/1 or /expenses/1.json
  def destroy
    @expense.destroy

    respond_to do |format|
      format.html { redirect_to expenses_url, notice: 'Expense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_expense
    @expense = Expense.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def expense_params
    params.require(:expense).permit(:AuthorId, :Name, :Amount)
  end
end
