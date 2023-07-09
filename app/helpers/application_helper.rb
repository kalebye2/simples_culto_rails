module ApplicationHelper
  require 'rqrcode'

  def render_data_brasil data = Date.today
    data.strftime("%d/%m/%Y")
  end

  def render_horario_brasil horario = Time.now
    horario.strftime("%Hh%M")
  end

  def gerar_qr_code_svg(conteudo="Jesus")
    RQRCode::QRCode.new(conteudo.to_s).as_svg(use_path: true, viewbox: true)
  end
end
