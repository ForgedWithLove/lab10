# frozen_string_literal: true

# Хорошо забытый старый контроллер
class FriendController < ApplicationController
  def input; end

  def view
    v1 = params[:v1].to_i
    res = []
    (1..v1).each do |number|
      sumdel = 0
      revsumdel = 0
      (1..number / 2).each do |del|
        sumdel += del if (number % del).zero?
      end
      (1..sumdel / 2).each do |revdel|
        revsumdel += revdel if (sumdel % revdel).zero?
      end
      if number == revsumdel && number != sumdel && (res[res.length - 1] != [sumdel, revsumdel])
        res.push([revsumdel, sumdel])
      end
    end
    @result = res
    array = []
    res.each do |elem|
      array_elem = {
        value1: elem[0],
        value2: elem[1]
      }
      array << array_elem
    end
    data = {
      value: array
    }
    respond_to do |format|
      format.xml { render xml: data.to_xml }
      format.rss { render xml: data.to_xml }
    end
  end
end
