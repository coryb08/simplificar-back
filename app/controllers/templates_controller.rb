class TemplatesController < ApplicationController
def index
  templates = Template.all
  render json:templates
end

def create
  template = Template.new(params[:name])
  if template.save
    render json:template
  else
    render json:template.errors
  end
end

def show
  template = Template.find(params[:id])
  render json:user
end


private

def template_params()
  params.require(:template).permit(:name, :description, :content, :user_id)
end

end
