class Arcondicionado
  CUSTO_LIGAR = 0.50
  CUSTO_ENERGIA = 0.10

  def initialize
    @custo = CUSTO_LIGAR
  end
  
  def refrigera(temp_atual, temp_desejada, duracao)
    @temp_atual = temp_atual
    @temp_desejada = temp_desejada + 2

    (duracao - 1).times { |dur|
      @temp_atual += 0.5
      reduz_um_grau if @temp_atual > @temp_desejada
    }
  end

  def reduz_um_grau
    @custo += CUSTO_ENERGIA
    @temp_atual -= 1
  end

  def resumo_final
     printf "Temperatura Final: %.1f \n", @temp_atual
     printf "Custo da Redução de Temperatura: R$%.2f \n", @custo
  end
end

ar = Arcondicionado.new
ar.refrigera(30, 20, 360)
ar.resumo_final