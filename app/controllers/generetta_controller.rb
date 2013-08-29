# encoding: utf-8

class GenerettaController < ApplicationController
  def index
    @model = GenerettaModel.where( title: params[:id] ).first
  end

  def models
    @models = GenerettaModel.where( title: params[:id] ).first
  end

  def methods
    @model = GenerettaModel.where( title: params[:id] ).first
  end

  def cases
    @context = GenerettaContext.first
    @case_table = @context.case_table
  end
end
