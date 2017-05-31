class TransfersController < ApplicationController
  before_action :authenticate_user
  before_action :set_user
  before_action :set_transfer, only: [:show, :update, :destroy]
  before_action :check_permission

  # GET /transfers
  def index
    @transfers = @user.transfers

    render json: @transfers
  end

  # GET /transfers/1
  def show
    render json: @transfer
  end

  # POST /transfers
  def create
    @transfer = Transfer.new(transfer_params)
    @transfer.user = @user
    if @transfer.save
      render json: @transfer, status: :created, location: [current_user, @transfer]
    else
      render json: @transfer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /transfers/1
  def update
    if @transfer.update(transfer_params)
      render json: @transfer
    else
      render json: @transfer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /transfers/1
  def destroy
    @transfer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transfer
      @transfer = @user.transfers.find(params[:id])
    end
    
    def set_user
      @user = User.find(params[:user_id])
    end

    # Only allow a trusted parameter "white list" through.
    def transfer_params
      params.require(:transfer).permit(:account_number_from, :account_number_to, :amount_pennies, :country_code_from, :country_code_to)
    end
end
