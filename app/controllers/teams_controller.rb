# frozen_string_literal: true

class TeamsController < ApplicationController
  def index
    @team = Team.all
  end

  def show
    @team = Team.where(name: params[:id]).first
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(params[:team].permit!)
    if @team.save
        redirect_to @team, alert: 'Team created successfully.'
    else
        redirect_to new_user_path, alert: 'Error creating team.'
    end
  end
end
