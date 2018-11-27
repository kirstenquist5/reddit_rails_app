class SubsController < ApplicationController
  # skinny controllers, fat models
  # controller to be as slim as possible, D.R.Y. and only worry about actions
    # CRUD, create read update delete

    # index   @ppl = Person.all
    # show    @person = Person.find(params[:id])
    # new     @person = Person.new
    # create  @person = Person.create(ppl_params)
    # edit    @person = Person.find(params[:id])
    # update  @person = Person.find(params[:id]).update(ppl_params)
    # delete  @person = Person.find(params[:id]).destory


    # callbacks
      # before_action, called before entering a method
      # after_action, called after entering a method
      # skip_before_action, skip the before action
      # skip_after_action, skip after action

      # before_action :method_to_call, (only/except): [:index, :show]

  # Model, all logic code
    # ordering, printing



  before_action :set_sub, only: [:show, :update, :edit, :destory]
  # before_action :set_sub, except: [:index, :new, :create]

  #bundle exec rake notes
  #TODO anything that needs to be done
  #FIXME fix any bugs or errors
  #OPTIMIZE refactor

  #TODO fill out index views
  #FIXME page not loading
  #OPTIMIZE change the color of the text

  # get 
  def index
    @subs = Sub.all
    # render a webpage/views
    # views/subs/index.html.erb

    # default render html
    # render return json, xml redirect
  end

  # get
  def show 
    # defualts renders show views/subs/show.html.erb
  end

  def new
    @sub = Sub.new
    # renders sub form
    render partial: "form"
  end

  def create
    @sub = Sub.create(sub_params)
    if @sub.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    render partial: "form"
    # render 'subs/form'
    # render the edit form
  end

  def update
    
    if @sub.update(sub_params)
      redirect_to @sub
    else
      render :edit
    end 
  end

  def destory
    
    @sub.destory
    redirect_to root_path
  end

  private
    def sub_params
      params.require(:sub).permit(:name)
    end

    def set_sub
      @sub = Sub.find(params[:id])
    end
end
