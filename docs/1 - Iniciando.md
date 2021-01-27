## ➤ Cenário

Eu sou um Analista Linux Jr, ou estou em uma equipe de suporte de ambientes Linux, e peguei um problema em uma máquina Linux. Por onde começar minha análise?

## ➤ Passos

1. `uptime`
1. `w`
1. `last`

## ➤ Comandos

O sistema operacional Linux já possui diversos comando que qualquer aspirante a especialista em Linux ou usuário avanço, como adiministrador de sistema, deve ter um bom domínio.

### `uptime`

O comando `uptime` nos retorna informações sobre a quanto tempo nosso sistema está em execução, junto com:

- Hora atual.
- Número de usuários com sessões em execução.
- Médias de carga do sistema nos últimos 1, 5 e 15 minutos.

Também pode filtrar as informações exibidas de uma só vez, dependendo das opções passadas.

Portanto, no início da sua análise, esse comando será de extrema importância para você saber se a sua máquina foi bootada ou não, quantos usuários estão ativos naquele momentos e as cargas do sistema nos últimos minutos.

Sua **syntax** é simples:

```bash
# uptime [option]
```

Executando `uptime` em seu terminal, algo como isso será retornado:

```bash
21:05:36 up 2 days, 12:43,  0 users,  load average: 0.16, 0.25, 0.26
```

Por ordem, o commando exibe o `current time` como primeira entrada, onde `up` significa que o sistema está funcionando durante tanto tempo. O `user count` é o número de usuários ligados e, por último, a [média de carga do sistema](https://www.tecmint.com/understand-linux-load-averages-and-monitor-performance/).

As médias de carga do sistema é o número médio de processos que estão em um estado executável ou ininterrupto. Um processo está em um estado executável quando está usando a CPU ou aguardando para usar a CPU, enquanto um processo está em um estado ininterrupto aguardando o acesso de E/S.

### `w`

Em sistemas operacionais do tipo Unix, esse comando é uma maneira rápida de ver quem está conextado e o que está fazendo. O comando `w` exibe informações sobre os usuários atualmente conectados na máquina e os seus processos.

Ele retorna uma resposta com essa ordem:

1. A hora atual.
1. Há quanto tempo o seu sistema está em execução.
1. Quantos usuários estão conectados no momento..
1. Média de carga do sistema nos últimos 1, 5 e 15 minutos.

Para cada usuários é exibido:

1. Nome de login.
1. Nome do TTY.
1. Host remoto do qual foi feito o login.
1. Quantidade de tempo que foi efetuado o login.
1. Tempo de inatividade.
1. JCPU.
1. CPU.
1. PCPU.
1. A linha de comando dos atuais processos.

O tempo da JCPU é o tempo usado por todos os processos anexados ao TTY. Não inclui trabalhos em segundo plano (background) anteriores, mas inclui trabalhos em segundo plano em execução no momento. O tempo da PCPU é o tempo usado pelo processo mostrado no `WHAT`.

#### Curiosidades

##### Variáveis

Existem algumas variáveis que você pode estar usando para customizar o output do `w`. Elas são:

- `PROCPS_USERLEN`: Quando passada substitui a largura default da coluna `user name`
- `PROCPS_FROMLEN`: uando passada substitui a largura default da coluna `from`

##### Arquivos

O arquivo `/var/run/utmp` é o arquivo que exibe informações sobre quem está conectado no momento, já o arquivo `/proc` exibe informações do sistema.
