require_dependency "workflow_kit/application_controller"

module WorkflowKit
  class WorkflowsController < ApplicationController

    load_and_authorize_resource if respond_to? :load_and_authorize_resource


    # GET /workflows
    # GET /workflows.json
    def index
      @workflows = Workflow.all
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @workflows }
      end
    end
  
    # GET /workflows/1
    # GET /workflows/1.json
    def show
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @workflow }
      end
    end
  
    # GET /workflows/new
    # GET /workflows/new.json
    def new
      @workflow = Workflow.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @workflow }
      end
    end
  
    # GET /workflows/1/edit
    def edit
    end
  
    # POST /workflows
    # POST /workflows.json
    def create
      @workflow = Workflow.new(params[:workflow])
  
      respond_to do |format|
        if @workflow.save
          format.html { redirect_to @workflow, notice: 'Workflow was successfully created.' }
          format.json { render json: @workflow, status: :created, location: @workflow }
        else
          format.html { render action: "new" }
          format.json { render json: @workflow.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PUT /workflows/1
    # PUT /workflows/1.json
    def update
      respond_to do |format|
        if @workflow.update_attributes(params[:workflow])
          format.html { redirect_to @workflow, notice: 'Workflow was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @workflow.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /workflows/1
    # DELETE /workflows/1.json
    def destroy
      @workflow.destroy
  
      respond_to do |format|
        format.html { redirect_to workflows_url }
        format.json { head :no_content }
      end
    end

    # PUT /workflows/1/execute
    def execute
      @workflow.execute( params )
      
      flash[ :notice ] = I18n.t( :executed_workflow, @workflow.name )
      redirect_to :back
    end
  end
end
