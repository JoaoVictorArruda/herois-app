# Heróis

Devido à baixíssima quantidade de pessoas doadoras de sangue, muitas vezes os médicos são obrigados a escolher qual paciente deve receber a transfusão de sangue primeiro e qual ficará internado, já que os médicos ainda precisam de uma reserva de sangue para casos de emergência. Também há casos em que os pacientes precisam de transfusões de sangue periódicas durante a vida toda. Heróis é um aplicativo que facilita e incentiva a doação de sangue. Visto que os bancos de sangue possuem estoques limitados e com prazo de validade para serem utilizados.

Link para download: https://play.google.com/store/apps/details?id=br.com.herois

# Sumário
* [Domain Driven Design](#ddd)
* [Arquitetura](#arquitetura)
* [Camadas](#camadas)

## [Domain Driven Design](#ddd)
A arquitetura de software tem grande impacto sobre quanto a complexidade do software pode escalar. Quando essa complexidade está fora de controle, os desenvolvedores podem não entender a maneira como o software está se comportando. Dificultando a manutenção e segurança. A principal regra do Domain-driven design (DDD) diz que a parte principal do projeto deve estar no pacote domain. Isso significa que as validações de regras de negócio devem estar nesse pacote.

## [Arquitetura](#arquitetura)
A arquitetura proposta para esse projeto permite a separação do software em 4 (quatro) camadas. Para isso, foi reunido vários conceitos de Padrões de Projeto (Design Patterns).

<img src="https://resocoder.com/wp-content/uploads/2020/03/DDD-Flutter-Diagram-v3.svg" style="display: block; margin-left: auto; margin-right: auto; width: 30%;"/>

• As setas representam o fluxo da informação. <br>
• A camada domain é completamente independente de todas as outras. Contém apenas lógica de negócio e dados.

## [Camadas](#camadas)

### Presentation
Nessa camada temos todos os widgets que formam a interface que será apresentada para o usuário. Os events são os métodos que podem opcionalmente carregar algum dado não tratado e ativam a lógica dentro do BLoC. O BloC não faz parte desta camada, mas é ele quem executa a lógica baseada nos events e então devolvem states.

### Application
Essa camada tem apenas uma função: orquestrar todos as outras camadas. Não realiza nenhuma regra de negócio, apenas certifica-se que os dados foram validados.

### Domain
Nessa camada, os dados são validados e as regras de negócio são executadas.

### Infrastructure
A camada Infrastructure é o extremo oposto da camada Presentation. Essa camada é responsável por receber dados de APIs, banco de dados e sensores do dispositivo.
