class ExperimentController < ApplicationController
  def index
    @questions = Question.all.to_json
  end
end
