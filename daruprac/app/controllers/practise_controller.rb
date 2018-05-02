class PractiseController < ApplicationController

  require 'daru'

  def load_csv  
    @data_frame = Daru::DataFrame.from_csv('zyelabs_learning_styles.csv')

  end

  def index
    load_csv
    @name = Daru::Vector.new @data_frame['Who']
    @activist = Daru::Vector.new [@data_frame['Activist Score'], @data_frame['Reflector Score']]
  end

 
end
