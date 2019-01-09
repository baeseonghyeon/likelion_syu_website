class MainsController < ApplicationController
  before_action :set_main, only: [:edit, :update]
  load_and_authorize_resource

  # GET /mains
  # GET /mains.json
  def index
    @mains = Main.all
    @services = Service.all
    # @users = User.all
  end

  # GET /mains/1
  # GET /mains/1.json
  # def show
  # end

  # GET /mains/new
  def new
    @main = Main.new
    authorize! :mainnew, @mains
  end

  # GET /mains/1/edit
  def edit
    authorize! :edit, @mains
  end

  # POST /mains
  # POST /mains.json
  def create
    @main = Main.new(main_params)

    respond_to do |format|
      if @main.save
        format.html { redirect_to mains_path, notice: 'Main was successfully created.' }
        format.json { render :show, status: :created, location: @main }
      else
        format.html { render :new }
        format.json { render json: @main.errors, status: :unprocessable_entity }
      end
    end
    authorize! :create, @mains
  end

  # PATCH/PUT /mains/1
  # PATCH/PUT /mains/1.json
  def update
    respond_to do |format|
      if @main.update(main_params)
        format.html { redirect_to mains_path, notice: 'Main was successfully updated.' }
        format.json { render :show, status: :ok, location: @main }
      else
        format.html { render :edit }
        format.json { render json: @main.errors, status: :unprocessable_entity }
      end
    end
    authorize! :update, @mains
  end

  # DELETE /mains/1
  # DELETE /mains/1.json
  # def destroy
  #   @main.destroy
  #   respond_to do |format|
  #     format.html { redirect_to mains_url, notice: 'Main was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main
      @main = Main.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def main_params
      params.require(:main).permit(:title, :content, :hidden, :th, :lion, :hack, :service, :applylink, :applycontent, :service_id)
    end
    
end
