Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 30/09/2024
Var
var
    clientes: vetor[1..10] de registro
        nome: caractere
        email: caractere
        telefone: caractere
    fimregistro
    opcao, i, indice: inteiro
    clienteEncontrado: logico


inicio
    para i de 1 ate 10 faca
        se clientes[i].nome = "" entao
            escreval("Nome: ")
            leia(nome)
            escreval("Email: ")
            leia(email)
            escreval("Telefone: ")
            leia(telefone)
            clientes[i].nome <- nome
            clientes[i].email <- email
            clientes[i].telefone <- telefone
            escreval("Cliente adicionado com sucesso!")
            retorne
        fimse
    fimpara
    escreval("Limite de clientes atingido.")
fimalgoritmo

// Fun��o para listar todos os clientes
procedimento listar_clientes()
inicio
    clienteEncontrado <- falso
    para i de 1 ate 10 faca
        se clientes[i].nome <> "" entao
            escreval("Cliente ", i, ": Nome: ", clientes[i].nome, ", Email: ", clientes[i].email, ", Telefone: ", clientes[i].telefone)
            clienteEncontrado <- verdadeiro
        fimse
    fimpara
    se nao clienteEncontrado entao
        escreval("Nenhum cliente cadastrado.")
    fimse
fimalgoritmo

// Fun��o para editar um cliente existente
procedimento editar_cliente()
inicio
    listar_clientes()
    escreval("Digite o n�mero do cliente que deseja editar: ")
    leia(indice)
    se indice >= 1 e indice <= 10 e clientes[indice].nome <> "" entao
        escreval("Novo nome: ")
        leia(clientes[indice].nome)
        escreval("Novo email: ")
        leia(clientes[indice].email)
        escreval("Novo telefone: ")
        leia(clientes[indice].telefone)
        escreval("Cliente editado com sucesso!")
    senao
        escreval("Cliente n�o encontrado.")
    fimse
fimalgoritmo

// Fun��o para remover um cliente
procedimento remover_cliente()
inicio
    listar_clientes()
    escreval("Digite o n�mero do cliente que deseja remover: ")
    leia(indice)
    se indice >= 1 e indice <= 10 e clientes[indice].nome <> "" entao
        clientes[indice].nome <- ""
        clientes[indice].email <- ""
        clientes[indice].telefone <- ""
        escreval("Cliente removido com sucesso!")
    senao
        escreval("Cliente n�o encontrado.")
    fimse
fimalgoritmo

// Fun��o principal para exibir o menu e executar as opera��es
inicio
    para i de 1 ate 10 faca
        clientes[i].nome <- ""
        clientes[i].email <- ""
        clientes[i].telefone <- ""
    fimpara

    repita
        escreval("\nMenu:")
        escreval("1. Adicionar cliente")
        escreval("2. Listar clientes")
        escreval("3. Editar cliente")
        escreval("4. Remover cliente")
        escreval("5. Sair")
        escreva("Escolha uma op��o: ")
        leia(opcao)

        escolha opcao
            caso 1
                adicionar_cliente()
            caso 2
                listar_clientes()
            caso 3
                editar_cliente()
            caso 4
                remover_cliente()
            caso 5
                escreval("Saindo do programa...")
            outrocaso
                escreval("Op��o inv�lida. Tente novamente.")
        fimescolha
    ate que opcao = 5
fimalgoritmo


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 


Fimalgoritmo