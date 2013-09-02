#encoding: utf-8
class WorksheetsController < ApplicationController
  before_action :set_worksheet, only: [:show, :edit, :update, :destroy]

  # GET /home
  def home
    @worksheet = current_anketa
  end

  # GET /worksheets
  def index
    @worksheets = Worksheet.all
    @worksheet = current_anketa
  end

  # GET /worksheets/1
  def show
    @worksheet = current_anketa
  end
  
  def new
    @worksheet = current_anketa
    if params[:anketa]=='1'
      redirect_to edit_worksheet_path(@worksheet, :anketa => 1 ) 
    end
    
    if params[:anketa]=='2'
      redirect_to edit_worksheet_path(@worksheet, :anketa => 2 ) 
    end
    
  end

  # GET /worksheets/1/edit
  def edit
    if (  @worksheet.ending ) 
      redirect_to @worksheet, notice: 'Ваша анкета успешно сохранена'
    end 
    @worksheet = current_anketa
    @votes = Vote.where( worksheet_id: @worksheet.id).all
    
    @PDeparts = Depart
    @PDeparts = @PDeparts.where(:parent=>nil).joins(' JOIN departs dd ON dd.parent = departs.id and dd.type_id = 0 ') if params[:anketa] == '1'
    @PDeparts = @PDeparts.where(:parent=>nil).joins(' JOIN departs dd ON dd.parent = departs.id ') if params[:anketa] == '2'
    @PDeparts = @PDeparts.select("departs.id,departs.name").group("departs.id,departs.name").having("sum(1) > ?",0).order(:name).all.map { |d| [ d.id , d.name ] }  
    
    @UDepartsList = Depart
    @UDepartsList = @UDepartsList.where('type_id = 1 and parent is not null') if params[:anketa] == '1'
    @UDepartsList = @UDepartsList.order(:name).all.map { |d| [ d.name , d.id ] }  
    
    @RList2 = Rate.where(:factor_id=>2).order('rates.value').all.map{|f| [f.name,f.value] }
    @RList3 = Rate.where(:factor_id=>3).order('rates.value').all.map{|f| [f.name,f.value] }
    @RList4 = Rate.where(:factor_id=>4).order('rates.value').all.map{|f| [f.name,f.value] }
    @RList5 = Rate.where(:factor_id=>5).order('rates.value').all.map{|f| [f.name,f.value] }  
  end

  # PATCH/PUT /worksheets/1
  def update
    # @worksheet = current_anketa
    p params
    if @worksheet.update(worksheet_params)
      worksheet_params[:votes].each do |v|
        if  worksheet_params[:show].include? v[:depart_id].to_s
         vote = Vote.find_or_create_by(factor_id: v[:factor_id], worksheet_id: v[:worksheet_id],depart_id: v[:depart_id]) 
         vote.value = v[:value].to_f
         vote.save 
        else
         Vote.destroy_all(factor_id: v[:factor_id], worksheet_id: v[:worksheet_id],depart_id: v[:depart_id]) 
        end 
      end
      @worksheet.end_date= Time.now
      @worksheet.save
      @worksheet= Worksheet.find(@worksheet.id)
      redirect_to @worksheet, notice: 'Ваша анкета успешно сохранена'
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
