class ExpensesController < ApplicationController

  def index
    @expenses = Expense.all
    @alex_spent = 0.00
    @expenses.each { |expense| expense.person == "Alex" ? @alex_spent += expense.amount : @alex_spent -= expense.amount }
  end

  def create
    @expense = Expense.new(expense_params)
    @expense.save
    redirect_to expenses_path
  end

  def destroy
    find_expense
    @expense.destroy
    redirect_to expenses_path
  end

  private

  def find_expense
    @expense = Expense.find(params[:id])
  end

  def expense_params
    params.require(:expense).permit(:amount, :person, :name)
  end
end
