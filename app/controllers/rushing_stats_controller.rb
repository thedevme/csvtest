class RushingStatsController < ApplicationController
  # GET /rushing_stats
  # GET /rushing_stats.json
  def index
    @rushing_stats = RushingStat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rushing_stats }
    end
  end

  # GET /rushing_stats/1
  # GET /rushing_stats/1.json
  def show
    @rushing_stat = RushingStat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rushing_stat }
    end
  end

  # GET /rushing_stats/new
  # GET /rushing_stats/new.json
  def new
    @rushing_stat = RushingStat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rushing_stat }
    end
  end

  # GET /rushing_stats/1/edit
  def edit
    @rushing_stat = RushingStat.find(params[:id])
  end

  # POST /rushing_stats
  # POST /rushing_stats.json
  def create
    @rushing_stat = RushingStat.new(params[:rushing_stat])

    respond_to do |format|
      if @rushing_stat.save
        format.html { redirect_to @rushing_stat, notice: 'Rushing stat was successfully created.' }
        format.json { render json: @rushing_stat, status: :created, location: @rushing_stat }
      else
        format.html { render action: "new" }
        format.json { render json: @rushing_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rushing_stats/1
  # PUT /rushing_stats/1.json
  def update
    @rushing_stat = RushingStat.find(params[:id])

    respond_to do |format|
      if @rushing_stat.update_attributes(params[:rushing_stat])
        format.html { redirect_to @rushing_stat, notice: 'Rushing stat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rushing_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rushing_stats/1
  # DELETE /rushing_stats/1.json
  def destroy
    @rushing_stat = RushingStat.find(params[:id])
    @rushing_stat.destroy

    respond_to do |format|
      format.html { redirect_to rushing_stats_url }
      format.json { head :no_content }
    end
  end
end
