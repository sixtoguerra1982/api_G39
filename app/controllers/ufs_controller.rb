class UfsController < ApplicationController
  def respuesta

    fecha_solicitada = params[:date]
    uf = Uf.find_by(fecha: fecha_solicitada)
   
    !uf.nil? ? valor = uf.valor : valor = "Valor no encontrado"

    fecha_solicitada = Uf.new(fecha: fecha_solicitada).fecha
    fecha_solicitada = "Fecha no Valida" if fecha_solicitada.nil?

    respuesta = {
      fecha_solicitada: fecha_solicitada, 
      valor: valor
    }
    
    render json: respuesta
    Search.create(name: params[:cliente], date: Time.now, request: request.fullpath)

  end
end
