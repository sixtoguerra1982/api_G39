class UfsController < ApplicationController
  def respuesta
    fecha_solicitada = params[:date]
    uf = Uf.find_by(fecha: fecha_solicitada)

    if !uf.nil?
      valor = uf.valor
    else 
      fecha_solicitada = "Fecha incorrecta"
      valor = "Valor no encontrado"
    end
    respuesta = {
      fecha_solicitada: fecha_solicitada, 
      valor: valor
    }
    Search.create(name: params[:cliente], date: Time.now)
    byebug
    
    render json: respuesta
  end
end
