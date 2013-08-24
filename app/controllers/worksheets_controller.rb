#encoding: utf-8
class WorksheetsController < ApplicationController
  before_action :set_worksheet, only: [:show, :edit, :update, :destroy]

  # GET /worksheets
  def index
    @worksheets = Worksheet.all
   
    
  end

  # GET /worksheets/1
  def show
    @worksheet = current_anketa
  end

  # GET /worksheets/new
  def new
    @worksheet = current_anketa
    redirect_to edit_worksheet_path(@worksheet)
  end

  # GET /worksheets/1/edit
  def edit
    @worksheet = current_anketa
    @PDeparts = Depart.where(:parent=>nil).all.map { |d| [ d.id , d.name ] }  
    @UDepartsList = Depart.all.map { |d| [ d.name , d.id ] }  
    @RList2 = Rate.where(:factor_id=>2).order('rates.value').all.map{|f| [f.name,f.value] }
    @RList3 = Rate.where(:factor_id=>3).order('rates.value').all.map{|f| [f.name,f.value] }
    @RList4 = Rate.where(:factor_id=>4).order('rates.value').all.map{|f| [f.name,f.value] }
    
  end

  # PATCH/PUT /worksheets/1
  def update
    p params
    if @worksheet.update(worksheet_params)
      worksheet_params[:votes].each do |v|
       vote = Vote.create(v) 
       vote.save
      end
      redirect_to @worksheet, notice:  worksheet_params  #'Worksheet was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /worksheets/1
  def destroy
    @worksheet.destroy
    redirect_to worksheets_url, notice: 'Worksheet was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_worksheet
      @worksheet = Worksheet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def worksheet_params
      params[:worksheet]
    end
    
    def validate_w
      @w = current_anketa
    end
end
