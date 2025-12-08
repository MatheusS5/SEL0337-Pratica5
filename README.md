# Prática 5 - Personalização de serviços no Systemd

O projeto controla um LED RGB que muda de cor aleatoriamente ao ligar a Raspberry Pi, e pisca um led vermelho ao ser desligado.

## Lista de Materiais:
* Raspberry Pi 3B+
* LED RGB
* LED Vermelho
* Resistores 220Ω
* Protoboard e cabos

## Tabela de Ligações (GPIO)
| Componente | Porta GPIO | Função |
| :--- | :---: | :--- |
| **LED Vermelho (RGB)** | 17 | Cor Vermelha |
| **LED Verde (RGB)** | 27 | Cor Verde |
| **LED Azul (RGB)** | 22 | Cor Azul |
| **LED Aviso** | 23 | Sinalização de Parada |

## Estrutura dos Arquivos
Para o funcionamento do serviço, foram criados 3 arquivos:
* `randrgb.py`: Script Python principal. Usa a biblioteca `gpiozero` e 'random' para gerar cores aleatórias no LED RGB.
* `finalizaled.sh`: Script Bash executado pelo `ExecStop`. Garante a parada do programa Python, limpa as portas GPIO e pisca o LED de aviso vermelho 3 vezes, indicando a parada do serviço.
* `ledrgb.service`: Arquivo de configuração do Systemd: Ativa o Python em ambiente virtual e inicia o programa 'randrgb.py'. Ao parar o serviço, executa o 'finalizaled.sh'.

A documentação e arquivos complementares são:
* `historico.txt`: Registro dos comandos enviados no terminal da Raspberry.
* `git_log.txt`: Log completo dos commits dos códigos no repositório.
* `demo_funcionamento.mp4`: Vídeo demonstrando o comportamento do início e parada do serviço criado.

## Alunos
* Matheus de Abreu Silva - 13748864
* Teodoro Prada Carciofi - 13862351
