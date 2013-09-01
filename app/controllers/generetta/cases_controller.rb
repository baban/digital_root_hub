# encoding: utf-8

class Generetta::CasesController < ApplicationController
  def index
    @context = GenerettaContext.first
    @case_table = @context.case_table
  end

  def create
  end
  
  def update
  end
end
