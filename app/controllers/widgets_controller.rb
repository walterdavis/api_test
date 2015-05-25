class WidgetsController < ApplicationController
  def index
    @widgets = Widget.all
    render json: @widgets, callback: params[:callback]
  end
    
  def create
    @widget = Widget.new
    @widget.update_attributes(widget_params)
    render json: @widget, callback: params[:callback]
  end
  
  def show
    @widget = Widget.find params[:id]
    render json: @widget, callback: params[:callback]
  end
  
  def destroy
    @widget = Widget.find params[:id]
    @widget.destroy
    render nothing: true
  end
  
  private
  def widget_params
    params.require(:widget).permit(:name, :color, :description)
  end
end
