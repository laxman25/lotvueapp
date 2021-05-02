class VisaDetailsController < ApplicationController
  before_action :set_visa_detail, only: %i[ show edit update destroy ]

  # GET /visa_details or /visa_details.json
  def index
    @visa_details = VisaDetail.all
  end

  # GET /visa_details/1 or /visa_details/1.json
  def show
  end

  # GET /visa_details/new
  def new
    @visa_detail = VisaDetail.new
    @visa_detail.build_user
  end

  # GET /visa_details/1/edit
  def edit
  end

  # POST /visa_details or /visa_details.json
  def create
    @visa_detail = VisaDetail.new(visa_detail_params)
    #binding.pry
    respond_to do |format|
      if @visa_detail.save
        if  params[:visa_detail].present? && params[:visa_detail][:duration_ids].present?
          durations = Duration.find params[:visa_detail][:duration_ids]
          @visa_detail.durations = durations
        end

        if params[:user].present? && params[:user].fetch(:relationship_ids).present?
          @relationships = Relationship.where(:id => params[:user][:relationship_ids])
          @visa_detail.user.relationships << @relationships
        end
        format.html { redirect_to @visa_detail, notice: "Visa detail was successfully created." }
        format.json { render :show, status: :created, location: @visa_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @visa_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visa_details/1 or /visa_details/1.json
  def update
    respond_to do |format|
      if @visa_detail.update(visa_detail_params)
        format.html { redirect_to @visa_detail, notice: "Visa detail was successfully updated." }
        format.json { render :show, status: :ok, location: @visa_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @visa_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visa_details/1 or /visa_details/1.json
  def destroy
    @visa_detail.destroy
    respond_to do |format|
      format.html { redirect_to visa_details_url, notice: "Visa detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visa_detail
      @visa_detail = VisaDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def visa_detail_params
      params.require(:visa_detail).permit(:used_pen,:outside_country,
                                          :inside_country, :visiting_from, :visiting_to, :is_more_occasion, :types_of_occasion,
                                          :date_of_extend, :detailed_description, :image, :name_of_city, :name_of_state, :name_of_country, duration_ids: [:id],
                                          user_attributes: [:family_name, :given_names, :date_of_birth, :passport_number, :country_of_passport, :passport_nationality,
                                                  :date_of_issue, :date_of_expired, :ssueing_authority])

    end
end
