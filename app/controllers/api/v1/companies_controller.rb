class Api::V1::CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    @company = Company.find_by(id: params[:id])
  end

  def create
    @company = Company.new(
      name: params[:name],
      department: params[:department],
      buzzword: params[:buzzword],
      slogan: params[:slogan]
    )

    if @company.save
      render json: {message: "Company was created successfully"}.to_json
    else
      render json: {errors: @company.errors.full_messages}, status: 422
    end
  end

  def update
    @company = Company.find_by(id: params[:id])
    @company.update(
      name: params[:name],
      department: params[:department],
      buzzword: params[:buzzword],
      slogan: params[:slogan]
    )
    render 'show'
  end

  def destroy
    @company = Company.find_by(id: params[:id])
    @company.destroy
    render 'show'
  end
end
