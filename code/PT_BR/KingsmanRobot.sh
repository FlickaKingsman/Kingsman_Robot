#!/bin/bash
clear

#-------- ECHOES ---------
function echoes()
{
for i in {1..10} 
do
	echo  
done
}

#---------- INTRODUÇÃO ---------
function intro()
{
	echoes
	echo -e "Ola $USER! Bem vindo ao Robo Kingsman! \nO melhor assistente virtual que voce poderia conhecer!\n
Voce pode digitar as seguintes opcoes:\nSINTAXE: $0 OPCAO\n
start | START .......... Para iniciar o robo\nhelp  | HELP ........... Manual do Robo (Como Usar)"| boxes -d parchment 
	echo
	echo
}

#------------------------------------- CONECTIVIDADE ----------------------------------------

function conectividade()
{	
	NUM=$(((RANDOM % 4 ) + 1))
	echo -e "\033[1;37m Percebi que você quer verificar sua conexão com algum host ou site. \033[0m"
	sleep 1s
	echo
	echo -e "\033[1;37mDigite o \033[46;1;37m IP \033[0m ou \033[46;1;37m Nome do Domínio\033[0m\033[1;37m que você quer verificar sua conexão:\033[0m"
	echo -ne "HOST: "
	read IP
	echo

	if [ $NUM -eq 1  ]; then
		echo -e "\033[1;36mIniciando o teste de conexão...\033[0m"
		sleep 1s
		echo
		ping -c 4 $IP
		echo
		echo -e "\033[1;36mSeu teste de conexão com o host $IP foi realizado!\033[0m"
		
	elif [ $NUM -eq 2  ]; then
		echo -e "\033[1;36mAgora que você já inseriu seu Host Alvo, vou inciar o teste de Conexão!\033[0m"
		sleep 1s
		echo
		ping -c 4 $IP
		echo
		echo -e "\033[1;36mPronto! Seu teste de conectividade acabou.\033[0m"
			
	elif [ $NUM -eq 3  ]; then
		echo -e "\033[1;36mObrigada! Agora vou realizar seu teste de conexão...\033[0m"
		sleep 1s
		echo
		ping -c 4 $IP
		echo
		echo -e "\033[1;36mO teste de conexão terminou ;)\033[0m"
	
	elif [ $NUM -eq 4  ]; then
		echo -e "\033[1;36mMuito Bem! Agora vou fazer o teste de conectividade!\033[0m"
		sleep 1s
		echo
		ping -c 4 $IP
		echo
		echo -e "\033[1;36mPronto! Seu teste terminou.\033[0m"
	fi
	echo
	
	#------ Voltar ao Menu --------
	sleep 2s
	pergunta="S"
	while [ "$pergunta" == "S" ]
	do	
		echo -e "\033[0;36mDeseja voltar ao meu\033[1;36m Menu Principal\033[0m \033[0;36mpara fazer mais perguntas? [S ou N]:\033[0m "
		read sair 
		if [[ ( "$sair" == "S" || "$sair" == "s" ) ]]; then
			menu
	 
		elif [[ ( "$sair" == "N" || "$sair" == "n" ) ]]; then
			clear
			echoes
			figlet BYE
			sleep 1s
			pergunta="N"
		else
			echo
			echo -e "\033[1;37mNão Entendi! Digite sua resposta novamente!\033[0m"
			pergunta="S"	
		fi
	done
}

#----------------------------------------- HORA ---------------------------------------------
function hora()
{
	data=$( date +"%T" )
	data_space=`echo -e $data | tr ":" " "`
	first=${data_space%% *}
	hour=${first#0}
	echo
		
	#--- Madrugada ----
	if [[ $hour -ge 0 && $hour -lt 6 ]]; then
		echo -e "\033[1;37mHora: $data\033[0m"
		echo -e "\033[47;1;30mEita, parece que está de Madrugada. Vá dormir mais pouquinho ;)\033[0m"

	#--- Manhã ----	
	elif [[ $hour -ge 6 && $hour -lt 12 ]]; then
    	echo -e "\033[1;37mHora: $data\033[0m"
		echo -e "\033[42;1;37mJá está de manhã! Aproveite e vá fazer uma caminhada!\033[0m"

	#--- Tarde ---
	elif [[ $hour -ge 12 && $hour -lt 19 ]]; then
   		echo -e "\033[1;37mHora: $data\033[0m"
		echo -e "\033[44;1;37mParece que já está tarde heim...\033[0m"
	
	#--- Noite ----
	elif [[ ( $hour -ge 19 && $hour -lt 24 ) ]]; then
		echo -e "\033[1;37mHora: $data\033[0m"
   		echo -e "\033[40;1;37mEstá de noite! Já deve estar escuro ai fora!\033[0m"

	else
		echo -e "\033[1;37mAcho que tem alguma coisa errada com o seu relógio, heim?\033[0m"
		echo
		echo -e "\033[1;37mVerifique se o comando \033[1;35mDATE \033[0mestá funcionando direitinho e se seu sistema está atualizado :)\033[0m"
		echo
	fi
	echo
	#--------- Voltar ao Menu -------
	sleep 2s
	pergunta="S"
	while [ "$pergunta" == "S" ]
	do	
		echo -e "\033[1;35mDeseja voltar ao meu Menu Principal para fazer mais perguntas? [S ou N]: \033[0m"
		read sair 
		if [[ ( "$sair" == "S" || "$sair" == "s" ) ]]; then
			menu
	 
		elif [[ ( "$sair" == "N" || "$sair" == "n" ) ]]; then
			clear
			echoes
			figlet BYE
			sleep 1s
			pergunta="N"
		else
			echo
			echo -e "\033[1;37mNão Entendi! Digite sua resposta novamente!\033[0m"
			pergunta="S"
		fi
	done
}

#----------------------------------------------- NAMORAR --------------------------------------------------
function namorar()
{
	sleep 1s
	NUM=$(((RANDOM % 5 ) + 1))
	echo
	
	if [ $NUM -eq 1 ]; then
		echo -e "\033[1;37mAcho que algúem ficou curioso sobre a miha vida amorosa heim? lol\033[0m"
		sleep 1s
		echo 
		echo -e "\033[1;37mEu achei que estivesse rolando um clima com o ar condicionado, mas ele me deu o gelo :(\033[0m"

	elif [ $NUM -eq 2 ]; then
		echo -e "\033[1;37mEu me completo sozinho e não preciso dividir sobremesa com ninguem ;)\033[0m"
	
	elif [ $NUM -eq 3 ]; then
		echo -e "\033[1;37mEu sou feliz sendo as duas metades da minha laranja!\033[0m"

	elif [ $NUM -eq 4 ]; then
		echo -e "\033[1;37mDisseram-me que meus padrões de inteligência artificial são muito altos rsrsrrs\033[0m"

	elif [ $NUM -eq 5 ]; then
		echo -e "\033[1;37mNao estou com ninguém no momento, mas a Alexa tem mê chamado bastante atenção ;)\033[0m"
	fi	
	echo
	echo
	#--------- Voltar ao Menu -------
	sleep 2s
	pergunta="S"
	while [ "$pergunta" == "S" ]
	do	
		echo -e "\033[41;1;37mDeseja voltar ao meu Menu Principal para fazer mais perguntas? [S ou N]:\033[0m "
		read sair 
		if [[ ( "$sair" == "S" || "$sair" == "s" ) ]]; then
			menu
	 
		elif [[ ( "$sair" == "N" || "$sair" == "n" ) ]]; then
			clear
			echoes
			figlet BYE
			sleep 1s
			pergunta="N"
		else
			echo
			echo -e "\033[1;37mNão Entendi! Digite sua resposta novamente!\033[0m"
			pergunta="S"
		fi
	done
}

#-------------------------------------------- VULNERABILIDADE --------------------------------------------
function vuln()
{
	echo
	echo -e "\033[1;37mDigite o Host que você deseja escanear:\033[0m"
	echo -ne "HOST: "
	read host
	echo
	echo "--------------------------------------------------------------------------" 
	echo
	nmap -sV $host
	echo
	echo "--------------------------------------------------------------------------"
	echo
	NUM=$(((RANDOM % 4 ) + 1))
	sleep 1s
	if [ $NUM -eq 1 ]; then
		echo -e "\033[1;37mEscaneamento Realizado! Obrigada pro confiar em mim para realizá-lo!\033[0m"
	elif [ $NUM -eq 2 ]; then
		echo -e "\033[0;32mSeu SCAN terminou!\033[0m"
	elif [ $NUM -eq 3 ]; then
		echo -e "\033[0;33mEscaneamento Finalizado!"
	elif [ $NUM -eq 4 ]; then
		echo -e "\033[0;31mMuito Bem! O escaneamento terminou\033[0m"
	fi
	echo

	#-------- Voltar ao Menu -------
	sleep 2s
	pergunta="S"
	while [ "$pergunta" == "S" ]
	do	
		echo -e "\033[1;37mDeseja voltar ao meu Menu Principal para fazer mais perguntas? [S ou N]:\033[0m "
		read sair 
		if [[ ( "$sair" == "S" || "$sair" == "s" ) ]]; then
			menu

	 	elif [[ ( "$sair" == "N" || "$sair" == "n" ) ]]; then
			clear
			echoes
			figlet BYE
			sleep 1s
			pergunta="N"
		else
			echo
			echo -e "\033[0;33mNão Entendi! Digite sua resposta novamente!\033[0m"
			pergunta="S"
		fi
	done
}

#------------------------------------------ SERVIÇOS --------------------------------------------
function servico()
{
	echo
	NUM=$(((RANDOM % 4 ) + 1))
	if [ $NUM -eq 1 ]; then
		echo -e "\033[1;32mSERVIÇOS RODANDO:\033[0m"
	elif [ $NUM -eq 2 ]; then
		echo -e "\033[1;33mSERVIÇOS RODANDO:\033[0m"
	elif [ $NUM -eq 3 ]; then
		echo -e "\033[1;34mSERVIÇOS RODANDO:\033[0m"
	elif [ $NUM -eq 4 ]; then
		echo -e "\033[1;36mSERVIÇOS RODANDO:\033[0m"
	fi
	echo
	ss -atun
	echo
	echo
	
	#---- Voltar ao Menu -----
	sleep 1s
	pergunta="S"
	while [ "$pergunta" == "S" ]
	do	
		echo -e "\033[0;32mDeseja voltar ao meu Menu Principal para fazer mais perguntas? [S ou N]:\033[0m "
		read sair 
		if [[ ( "$sair" == "S" || "$sair" == "s" ) ]]; then
			menu
	 
		elif [[ ( "$sair" == "N" || "$sair" == "n" ) ]]; then
			clear
			echoes
			figlet BYE
			sleep 1s
			pergunta="N"
		else
			echo
			echo -e "\033[1;37mNão Entendi! Digite sua resposta novamente!\033[0m"
			pergunta="S"
		fi
	done
}

#------------------------------------------------ VERSÃO ----------------------------------------------
function versao()
{
	echo
	echo -e "\033[1;34mInciando Verificação de Atualização de Pacotes...\033[0m"
	sleep 1s
	echo
	update=`apt update | grep "upgradable"`
	if [[ $update == "" ]]; then
		echo
		echo -e "\033[1;34mParece que você está com o sistema atualizado!\033[0m"
	else
		echo -e "\033[1;34mHmmmm, acho que você precisa realizar algumas atualizações!\033[0m"
		echo
		sleep 1s
		echo -e "\033[0;31mPara atualizar seus pacotes, volte ao Menu Principal e peça para atualizar seu sistema :)\033[0m"
		echo
		echo
	fi	

	#---- Voltar ao Menu -----
	sleep 2s
	pergunta="S"
	while [ "$pergunta" == "S" ]
	do	
		echo -e "\033[1;37mDeseja voltar ao meu Menu Principal para fazer mais perguntas? [S ou N]:\033[0m "
		read sair 
		if [[ ( "$sair" == "S" || "$sair" == "s" ) ]]; then
			menu
	 
		elif [[ ( "$sair" == "N" || "$sair" == "n" ) ]]; then
			clear
			echoes
			figlet BYE
			sleep 1s
			pergunta="N"
		else
			echo
			echo -e "Não Entendi! Digite sua resposta novamente!"
			pergunta="S"
		fi
	done
}

#---------------------------------------------- ATUALIZAR -----------------------------------------------
function atualiza()
{
	echo 
	echo -e "\033[1;31mLembre-se, você precisar estar no modo ROOT para atualizar seu sistema!\033[0m"
	sleep 2s
	echo -e "\033[0;31mVamos realizar o processo de atualização...\033[0m"
	sleep 1s
	echo
	apt upgrade -y
	echo
	NUM=$(((RANDOM % 4 ) + 1))
	if [ $NUM -eq 1 ]; then
		echo -e "\033[0;31mAtualização Realizada com Sucesso!\033[0m"
	elif [ $NUM -eq 2 ]; then
		echo -e "\033[0;31mMuito Bem! A atualização do seu sistema terminou.\033[0m"
	elif [ $NUM -eq 3 ]; then
		echo -e "\033[0;31mA atualização foi finalizada!\033[0m"
	elif [ $NUM -eq 4 ]; then
		echo -e "\033[0;31mSua máquina foi atualizada com êxito!\033[0m"
	fi

	#---- Voltar ao Menu -----
	sleep 2s
	pergunta="S"
	while [ "$pergunta" == "S" ]
	do	
		echo -e "Deseja voltar ao meu Menu Principal para fazer mais perguntas? [S ou N]: "
		read sair 
		if [[ ( "$sair" == "S" || "$sair" == "s" ) ]]; then
			menu
	 	elif [[ ( "$sair" == "N" || "$sair" == "n" ) ]]; then
			clear
			echoes
			figlet BYE
			sleep 1s
			pergunta="N"
		else
			echo
			echo -e "\033[1;37mNão Entendi! Digite sua resposta novamente!\033[0m"
			pergunta="S"
		fi
	done
}

#-------------------------------------------- CRIADOR -----------------------------------------------------

function criador()
{
	echo
	echo
	sleep 1s
	NUM=$(((RANDOM % 4 ) + 1))
	
	if [ $NUM -eq 1 ]; then
		echo -e "\033[1;37mParece que alguém está curioso sobre o meu Criador :)\033[0m"
		sleep 2s
		echo -e "Meu criador é o \033[1;37mKingsman\033[0m! "
	elif [ $NUM -eq 2 ]; then
		echo -e "\033[0;35mQuer saber quem é meu Criador?\033[0m"
		sleep 2s
		echo -e "\033[45;1;37mO meu criador é o Kingsman\033[0m"
		sleep 1s
		echo -e "\033[1;35mPS: Ele está super feliz que você está usando o robozinho dele:)\033[0m"
	elif [ $NUM -eq 3 ]; then
		echo -e "\033[1;32mBom, sobre o meu Criador...\033[0m"
		echo
		sleep 1s
		echo -e "\033[0;32mUm cara teve uma brilhante ideia e pá!\033[0m "
		echo -e "\033[0;32mEstou aqui!\033[0m"
		sleep 2s
		echo
		echo -e "\033[1;32mPS: O nome dele é Kingsman\033[0m"
	elif [ $NUM -eq 4 ]; then
		echo -e "\033[0;36mMeu criador??\033[0m"
		echo
		sleep 1s
		echo -e "\033[1;36mBom, o nome dele é Kingsman! E ele é um amante de CyberSecurity!\033[0m"
	fi
	echo

	#---- Voltar ao Menu -----
	sleep 1s
	pergunta="S"
	while [ "$pergunta" == "S" ]
	do	
		echo -e "\033[1;37mDeseja voltar ao meu Menu Principal para fazer mais perguntas? [S ou N]:\033[0m "
		read sair 
		if [[ ( "$sair" == "S" || "$sair" == "s" ) ]]; then
			menu
	 
		elif [[ ( "$sair" == "N" || "$sair" == "n" ) ]]; then
			clear
			echoes
			figlet BYE
			sleep 1s
			pergunta="N"
		else
			echo
			echo -e "\033[45;1;37mNão Entendi! Digite sua resposta novamente!\033[0m"
			pergunta="S"
		fi
	done
}

#--------------------------------------------- PIADAS ---------------------------------------------------
function piada()
{
	sleep 1s
	NUM=$(((RANDOM % 6 ) + 1))
	echo
	if [ $NUM -eq 1 ]; then
		echo -e "\033[1;37mUma Piada? deixa eu pensar...\033[0m"
		sleep 1s
		echo -e "\033[0;37mEssa dá pra contar pros amigos\033[0m"
		echo
		sleep 2s
		echo -e "\033[0;33mQual a roupa preferida do Macaco?\033[0m"
		sleep 2s
		echo -e "\033[1;33mO MACACÃO!\033[0m"
		sleep 1s
		echo

	elif [ $NUM -eq 2 ]; then
		echo -e "\033[1;37mPensando em algo engraçado....\033[0m"
		sleep 1s
		echo -e "\033[0;37mSaca essa!\033[0m"
		sleep 2s
		echo
		echo -e "\033[0;31mO engenheiro olhou para o espelho, o que aconteceu?\033[0m"
		sleep 2s
		echo -e "\033[1;31mO engenheiro CIVIL!\033[0m"
		sleep 1s
		echo
	
	elif [ $NUM -eq 3 ]; then
		echo -e "\033[1;37mEssa você vai adorar!\033[0m"
		echo
		sleep 2s
		echo -e "\033[0;34mO dono do site esqueceu a própria senha!\033[0m"
		sleep 1s
		echo -e "\033[0;34mQual o nome do filme?\033[0m"
		sleep 2s
		echo -e "\033[1;34mEsqueceram Admin\033[0m"
		sleep 1s
		echo
	
	elif [ $NUM -eq 4 ]; then
		echo -e "\033[1;37mDeixa eu ver...\033[0m"
		echo
		sleep 1s
		echo -e "\033[0;32mPor que o jacaré tirou o filho da escola?\033[0m"
		sleep 2s
		echo -e "\033[1;32mPorque ele réptil de ano!\033[0m"
		sleep 1s
		echo	
	
	elif [ $NUM -eq 5 ]; then
		echo -e "\033[1;37mHmmm.......\033[0m"
		echo
		sleep 1s
		echo -e "\033[0;35mComo deixar alguém curioso?\033[0m"
		sleep 2s
		echo -e "\033[1;35mEu conto amanhã!\033[0m"
		sleep 1s
		echo	
	
	elif [ $NUM -eq 6 ]; then
		echo -e "\033[1;37mProcurando algo para rir? Vamos lá!\033[0m"
		echo
		sleep 1s
		echo -e "\033[0;36mPor que o mouse é muito mimado?\033[0m"
		sleep 2s
		echo -e "\033[1;36mPorque tudo o que ele quer, o mouse pad!\033[0m"
		sleep 1s
		echo	
	fi
	
	#---- Voltar ao Menu -----
	sleep 2s
	echo -ne "\033[1;37mDeseja voltar ao meu Menu Principal para fazer mais perguntas? [S ou N]:\033[0m "
	read sair 
	while [[ "$sair" != [s,n,S,N] ]]
	do	
		echo
		echo -ne "Opção Inválida! Digite novamente: "
		read sair
	done
	case $sair in
		S|s)menu;;
		N|n)
			clear
			echoes
			figlet BYE
			sleep 1s
			exit
			;;
	esac
}

#------------------------------------------- QUIZ --------------------------------------------
function quiz_lista()
{
	pontos=0
	
	echo -e "\033[1;37mEste Quiz vai testar o seu conhecimento sobre Computadores, Hardware e um pouquinho de História ;).\033[0m "
	echo
	sleep 2s
	echo -e "\033[1;37mPronto para começar o quiz?\033[0m "
	echo
	echo -e "\033[42;1;37mDigite ENTER para continuar\033[0m "
	read 
	echo
	echo -e "\033[1;37mVamos lá!\033[0m "
	sleep 2s
	
	
	clear
	echoes
	echo -e  "\033[0;33m----------------\033[0m"
	echo -e  "\033[0;33m|  PERGUNTA 1  |\033[0m"
	echo -e  "\033[0;33m----------------\033[0m"
	echo
	echo -e "\033[1;33mQual a função do HD (Disco Rígido)?\033[0m"
	echo
	echo -e "\033[1;33m1) Reduzir o Calor
2) Após ser inserido um disco/dvd, para assistir um filme ou jogar
3) Aceleração do PC
4) Armazenar arquivos e programas
5) Não sei\033[0m"
	echo
	echo -e "\033[1;37mDigite o Número da opção desejada:\033[0m"
	echo
	pergunta1="S"
	while [ "$pergunta1" == "S" ]
	do
		echo -ne "\033[1;37mR: \033[0m"
		read resposta1
		echo
        	case $resposta1 in
			4)
				pontos=$(($pontos + 1))
				pergunta1="N"
			;;
			1|2|3|5)
				pontos=$(($pontos + 0))
				pergunta1="N"
			;;
			*)
				echo e "\033[1;37mOpção Inválida! Digite Novamente! \033[0m"				
			;;
		esac
	done

	clear
	echoes
	echo -e  "\033[0;35m----------------\033[0m"
	echo -e  "\033[0;35m|  PERGUNTA 2  |\033[0m"
	echo -e  "\033[0;35m----------------\033[0m"
	echo
	echo -e "\033[1;35mQual a principal diferença entre memórias RAM e ROM, quais são VOLÁTEIS e NÃO VOLÁTEIS\033[0m"
	echo
	echo -e "\033[1;35m1) ROM (Volátil) e RAM (Volátil) 
2) ROM (Não Volátil) e RAM (Volátil)
3) ROM (Não Volátil) e RAM (Não Volátil)
4) ROM (Volátil) e RAM (Não Volátil)\033[0m"
	echo
	echo -e "\033[1;37mDigite o Número da opção desejada:\033[0m"
	echo
	pergunta2="S"
	while [ "$pergunta2" == "S" ]
	do
		echo -ne "\033[1;37mR: \033[0m"
		read resposta2
		echo
        	case $resposta2 in
			2)
				pontos=$(($pontos + 1))
				pergunta2="N"
			;;
			1|3|4)
				pontos=$(($pontos + 0))
				pergunta2="N"
			;;
			*)
				echo -e "\033[1;37mOpção Inválida! Digite Novamente\033[0m"
			;;
		esac
	done

	clear
	echoes
	echo -e  "\033[0;36m----------------\033[0m"
	echo -e  "\033[0;36m|  PERGUNTA 3  |\033[0m"
	echo -e  "\033[0;36m----------------\033[0m"
	echo
	echo -e "\033[1;36mQual a diferença entre CPU e Gabinete?\033[0m"
	echo
	echo -e "\033[1;36m1) CPU seria a estrutura e o Gabinete um central de processamento 
2) Não Sei
3) CPU seria uma central de processamento e o Gabinete a estrutura
4) Não há diferença\033[0m"
	echo
	echo -e  "\033[1;37mDigite o Número da opção desejada:\033[0m"
	echo
	echo
	pergunta3="S"
	while [ "$pergunta3" == "S" ]
	do	
		echo -ne "\033[1;37mR: \033[0m"
		read resposta3
		echo
        	case $resposta3 in
			3)
				pontos=$(($pontos + 1))
				pergunta3="N"
			;;
			1|2|4)
				pontos=$(($pontos + 0))
				pergunta3="N"
			;;
			*)
				echo -e  "\033[1;37mOpção Inválida! Digite Novamente.\033[0m"
			;;
		esac
	done
	
	clear
	echoes
	echo -e  "\033[0;31m----------------\033[0m"
	echo -e  "\033[0;31m|  PERGUNTA 4  |\033[0m"
	echo -e  "\033[0;31m----------------\033[0m"
	echo
	echo -e "\033[1;31mQual a diferença entre o SSD e o HD?\033[0m"
	echo
	echo -e "\033[1;31m1) O desempenho do SSD é melhor comparado ao HD 
2) O desempenho do HD é melhor comparado ao SSD  
3) Ambos têm as mesmas funções e capacidade\033[0m"
	echo
	echo -e "\033[1;37mDigite o Número da opção desejada:\033[0m"
	echo
	pergunta4="S"
	while [ "$pergunta4" == "S" ]
	do
		echo -ne "\033[1;37mR: \033[0m"
		read resposta4
		echo
        	case $resposta4 in
			1)
				pontos=$(($pontos + 1))
				pergunta4="N"
			;;
			2|3)
				pontos=$(($pontos + 0))
				pergunta4="N"
			;;
			*)
				echo -e "\033[1;37mOpção Inválida! Digite Novamente.\033[0m"
			;;
		esac
	done

	clear
	echoes
	echo -e  "\033[0;34m----------------\033[0m"
	echo -e  "\033[0;34m|  PERGUNTA 5  |\033[0m"
	echo -e  "\033[0;34m----------------\033[0m"
	echo
	echo -e "\033[1;34mQuais são as placas de expansão?\033[0m"
	echo
	echo -e "\033[1;34m1) Placa de Vídeo, Placa de Som, Modem, Placa de Rede, Pen Drive e Disco Rígido  
2) Placa de Vídeo, Placa de Som e Placa de Rede  
3) Placa de Vídeo, Modem, Placa de Som e Placa de Rede
4) Placa de Vídeo, Placa de Som, Modem, Placa de Rede e Pen Drive\033[0m"
	echo
	echo -e "\033[1;37mDigite o Número da opção desejada:\033[0m"
	echo
	pergunta5="S"
	while [ "$pergunta5" == "S" ]
	do
		echo -ne "\033[1;37mR: \033[0m"
		read resposta5
		echo
        	case $resposta5 in
			2)
				pontos=$(($pontos + 1))
				pergunta5="N"
			;;
			1|3|4)
				pontos=$(($pontos + 0))
				pergunta5="N"
			;;
			*)
				echo -e "\033[1;37mOpção Inválida! Digite Novamente.\033[0m"
			;;
		esac
	done

	clear
	echoes
	echo -e  "\033[1;37m----------------\033[0m"
	echo -e  "\033[1;37m|  PERGUNTA 6  |\033[0m"
	echo -e  "\033[1;37m----------------\033[0m"
	echo
	echo -e "\033[1;37mQual a principal função do Cooler?\033[0m"
	echo
	echo -e "\033[1;37m1) Armazenar programas e softwares  
2) Reduzir o calor e manter o clima do gabinete estável\033[0m"
	echo
	echo -e "\033[1;37mDigite o Número da opção desejada:\033[0m"
	echo
	pergunta6="S"
	while [ "$pergunta6" == "S" ]
	do
		echo -ne "\033[1;37mR: \033[0m"
		read resposta6
		echo
        	case $resposta6 in
			2)
				pontos=$(($pontos + 1))
				pergunta6="N"
			;;
			1)
				pontos=$(($pontos + 0))
				pergunta6="N"
			;;
			*)
				echo -e "\033[1;37mOpção Inválida! Digite Novamente.\033[0m"
			;;
		esac
	done
	
	clear
	echoes
	echo -e  "\033[0;32m----------------\033[0m"
	echo -e  "\033[0;32m|  PERGUNTA 7  |\033[0m"
	echo -e  "\033[0;32m----------------\033[0m"
	echo
	echo -e "\033[1;32m1GB tem ____ MB:\033[0m"
	echo
	echo -e "\033[1;32m1) Não sei '-'  
2) 1204
3) 1000
4) 1030
5) 1024\033[0m"
	echo
	echo -e "\033[1;37mDigite o Número da opção desejada:\033[0m"
	echo
	pergunta7="S"
	while [ "$pergunta7" == "S" ]
	do
		echo -ne "\033[1;37mR: \033[0m"
		read resposta7
		echo
        	case $resposta7 in
			5)
				pontos=$(($pontos + 1))
				pergunta7="N"
			;;
			1|2|3|4)
				pontos=$(($pontos + 0))
				pergunta7="N"
			;;
			*)
				echo -e "\033[1;37mOpção Inválida! Digite Novamente.\033[0m"
			;;
		esac
	done
	
	clear
	echoes
	echo -e  "\033[0;33m----------------\033[0m"
	echo -e  "\033[0;33m|  PERGUNTA 8  |\033[0m"
	echo -e  "\033[0;33m----------------\033[0m"
	echo
	echo -e "\033[1;33mO HARDWARE são todos os...\033[0m"
	echo
	echo -e "\033[1;33m1) Componentes físicos do computador
2) Programas instalados no computador
3) Componentes elétricos da caixa do computador
4) Teclados\033[0m"
	echo
	echo -e "\033[1;37mDigite o Número da opção desejada:\033[0m"
	echo
	pergunta8="S"
	while [ "$pergunta8" == "S" ]
	do
		echo -ne "\033[1;37mR: \033[0m"
		read resposta8
		echo
        	case $resposta8 in
			1)
				pontos=$(($pontos + 1))
				pergunta8="N"
			;;
			2|3|4)
				pontos=$(($pontos + 0))
				pergunta8="N"
			;;
			*)
				echo -e "\033[1;37mOpção Inválida! Digite Novamente.\033[0m"
			;;
		esac
	done
	
	clear
	echoes
	echo -e  "\033[0;37m----------------\033[0m"
	echo -e  "\033[0;37m|  PERGUNTA 9  |\033[0m"
	echo -e  "\033[0;37m----------------\033[0m"
	echo
	echo -e "\033[1;37mAda Lovelace foi...\033[0m"
	echo
	echo -e "\033[1;37m1) Foi uma atriz hollywood que criou o 'Frequency Hopping', uma tecnologia 
   que possibilitou a criação de Redes WI-FI, do Bluetooth e do GPS.\n
2) Foi uma condessa inglesa que escreveu o primeiro algorítmo para ser 
   processado por uma máquina. Considerada a primeira programadora do mundo.\n
3) Foi considerada a maior atriz pornográfica na década de 1970 nos EUA.\n
4) Foi uma física e química polonesa que conduziu as primeiras pesquisas 
   sobre radioatividade.\033[0m"
	echo
	echo -e "\033[1;37mDigite o Número da opção desejada:\033[0m"
	echo
	pergunta9="S"
	while [ "$pergunta9" == "S" ]
	do
		echo -ne "\033[1;37mR: \033[0m"	
		read resposta9
		echo
        	case $resposta9 in
			2)
				pontos=$(($pontos + 1))
				pergunta9="N"
			;;
			1|3|4)
				pontos=$(($pontos + 0))
				pergunta9="N"
			;;
			*)
				echo -e "\033[1;37mOpção Inválida! Digite Novamente.\033[0m"
			;;
		esac
	done
	
	clear
	echoes
	echo -e  "\033[1;36m-----------------\033[0m"
	echo -e  "\033[1;36m|  PERGUNTA 10  |\033[0m"
	echo -e  "\033[1;36m-----------------\033[0m"
	echo
	echo -e "\033[0;36mEm 1946, Nos Estados Unidos foi constrído o o primeiro computador, chamado __________:\033[0m"
	echo
	echo -e "\033[0;36m1) Transistor
2) Bob
3) Eniac
4) XA/E-XII\033[0m"
	echo
	echo -e "\033[1;37mDigite o Número da opção desejada:\033[0m"
	echo
	pergunta10="S"
	while [ "$pergunta10" == "S" ]
	do
		echo -ne "\033[1;37mR: \033[0m"
		read resposta10
		echo
        	case $resposta10 in
			3)
				pontos=$(($pontos + 1))
				pergunta10="N"
			;;
			1|2|4)
				pontos=$(($pontos + 0))
				pergunta10="N"
			;;
			*)
				echo -e "\033[1;37mOpção Inválida! Digite Novamente.\033[0m"
			;;
		esac
	done

	clear
	echoes
	echo -e "\033[1;37mVerificando sua Pontuação...\033[0m"
	sleep 2s
	echo
	echo -e "\033[0;37mSua Pontuação foi\033[0m \033[1;37m$pontos\033[0m \033[0;37mde 10 pontos\033[0m"
	if [[ "$pontos" -le 10 && "$pontos" -ge 8 ]]; then #10,9,8
		echo -e "\033[1;36mParabéns! Parece que você possui um ótimo conhecimento sobre computadores!\033[0m"
	elif [[ "$pontos" -lt 8 && "$pontos" -ge 6 ]]; then #7,6
		echo -e "\033[1;33mMuito Bem! Não é um expert, mas já é um começo!\033[0m"
	elif [[ "$pontos" -lt 6 && "$pontos" -ge 4 ]]; then #5,4
		echo -e "\033[1;35mEita... Acho que alguém ta precisando estudar mais heim?\033[0m"
	elif [[ "$pontos" -lt 4 && "$pontos" -ge 0 ]]; then #3,2,1,0
		echo -e "\033[1;31mPoxa... Acho que não foi dessa vez. Procure estudar mais sobre computadores, é bem divertido!\033[0m"
	fi
	echo

	#---- Voltar ao Menu -----
	pergunta="S"
	while [ "$pergunta" == "S" ]
	do	
		echo -e "\033[1;31mDeseja\033[0m \033[1;33mvoltar\033[0m \033[1;32mao meu\033[0m \033[1;36mMenu\033[0m \033[1;34mPrincipal\033[0m \033[1;35mpara\033[0m \033[0;35mfazer\033[0m \033[0;34mmais\033[0m \033[0;36mperguntas?\033[0m \033[1;37m[S ou N]:\033[0m "
		read sair 
		if [[ ( "$sair" == "S" || "$sair" == "s" ) ]]; then
			menu
		elif [[ ( "$sair" == "N" || "$sair" == "n" ) ]]; then
		        	
			pergunta="N"
		else
			echo
			echo -e "\033[1;37mNão Entendi! Digite sua resposta novamente!\033[0m"
			pergunta="S"
		fi
	done
}

#------------------------------------- AJUDA -------------------------------------------
function ajuda()
{	
	echo -e "
************************************************************************
                           MANUAL DO KINGSMAN                                     
************************************************************************

Bem vindo ao Manual de Instrucoes da Kingsman
Aqui vao algumas instrucao de como usar o robozinho
	
	
---------------------- INICIANDO O SCRIPT -----------------------

Caso queira saber quais parametros usar apenas inicie o 
programa digitando no terminal: $0

DICA: Para iniciar o robo digite no terminal: $0 start
	
------------------------- USANDO O ROBO -------------------------
	
Para comecar, voce deve saber que para realizar as perguntas,
deve-se colocar PALAVRAS-CHAVE no final da frase. 

EXEMPLO: Kingsman, gostaria de saber as HORAS 
Neste exemplo, a palavra chave e HORAS
	
EXEMPLO_2: Kingsman, quero me divertir
PALAVRA-CHAVE: DIVERTIR
	
PS: As PALAVRAS-CHAVE serao dadas quando voce iniciar o robo

" | boxes -d shell -a hcvc
echo
}	

###############################  Inicio Assistente ################################

#------- MENU -----------
function menu()
{
	clear
	echoes
	echo -e "
Bem Vindo $USER!
Sou seu assistente virtual! Me chame de Kingsman.\n
Como posso te ajudar? Pergunte qualquer coisa que esteja dentro dos seguintes temas.
LEMBRE-SE! No final da Frase utilize palavras-chave para me ajudar a conseguir para voce um resultado melhor :)

PS: Nao se preocupe em usar maiusculas ou minusculas, nisso eu consigo me virar ;)

**************************************************************************************************************************** 
*                       TEMAS                        *                             PALAVRAS-CHAVE                          * 
****************************************************************************************************************************
        
- Precisa de Ajuda?                                  | - help; ajuda; socorro; sos. 
- Gostaria de saber que horas sao?                   | - horas; tempo; manha; tarde; noite; time.                            
- Meu status de relacionamento ;)                    | - namora; namorado(a); relacionamento; solteira; crush; apaixonada. 
- Verificacao de conectividades com algum HOST.      | - conectividade; conexao; conectado; conectar; conecta; pingar.  
- Fazer varredura em algum HOST.                     | - varredura; vulnerabilidade(s); nmap; explorar; scan; escanear. 
- Quais servicos estao sendo executados na maquina?  | - servico(s); rodando; rodar.
- Descubra se voce esta atualizado.                  | - versao; update.
- Atualize seu sistema.                              | - atualizar; atualize; upgrade.
- Descubra quem e meu Criador.                       | - criador; criou; dono; programou; codou; inventou.
- Gostaria de ouvir uma piada?                       | - piada; engracada; rir.
- Quiz                                               | - quiz; divertir; diversao.
- Deseja Sair?                                       | - sair; voltar; exit.

"| boxes -d columns | boxes -s $(tput cols) -c x -a hc -i none | cut -c 2- 

	echo
	echo                                 
	echo -ne  "				\033[1;37mDigite sua Pergunta: \033[0m"
	read RESPOSTA1
	
############### RESPOSTAS ##################
	RESP="${RESPOSTA1,,}"

	case ${RESP##* } in
		
		#1.HELP
		help|ajuda|socorro|sos)
			clear
			echoes
			ajuda
			#---- Voltar ao Menu -----
			pergunta="S"
			while [ "$pergunta" == "S" ]
			do
				echo -e "\033[1;37mDeseja voltar ao meu Menu Principal para fazer mais perguntas? [S ou N]: \033[0m"
				read sair 
				if [[ ( "$sair" == "S" || "$sair" == "s" ) ]]; then
					menu
				elif [[ ( "$sair" == "N" || "$sair" == "n" ) ]]; then
					clear
					echoes	
					figlet 'BYE !'
					sleep 1s
					pergunta="N"
				else
					echo
					echo "Não Entendi! Digite sua resposta novamente!"
					pergunta="S"
				fi
			done
		;;
		#2.HORAS
		horas|hora|manha|manhã|tarde|noite|time|tempo)
			clear
			echoes
			hora
		;;
		#3.NAMORA
		namora|namorado|namorada|relacionamento|solteira|crush|apaixonada)

			clear
			echoes
			namorar		
		;;
		#CONECTAR
		conectividade|conexao|conexão|conectado|conectar|conecta|pingar) 
			clear
			echoes
			conectividade
		;;
		#VULNERABILIDADE
		vulnerabilidade|vulnerabilidades|nmap|explorar|varredura|scan|escanear)
			clear
			echoes
			vuln
		;;
		#SERVIÇOS
		serviços|servicos|serviço|servico|rodando|rodar)
			clear
			echoes
			servico
		;;
		#VERSÃO
		versao|versão|update)
			clear
			echoes
			versao
		;;
		#ATUALIZAR
		atualizar|atualiza|atualize|upgrade)
			clear
			echoes
			atualiza
		;;
		#CRIADOR
		criou|criador|dono|programou|codou|inventou)
			clear
			echoes
			criador
		;;
		#PIADA
		piada|engraçada|engracada|rir|risada)
			clear
			echoes
			piada
		;;
		#QUIZ
		quiz|diversão|diversao|divertir)
			clear
			echoes
			quiz_lista
		;;
		#SAIR
		sair|voltar|exit)
			clear
			echoes
			figlet 'BYE !'
			sleep 1s
			exit	
		;;
		#OUTROS
		*)
			echo
			echo -e "				\033[1;37mNão Entendi. Digite Novamente em...\033[0m "
			sleep 1s
			echo -e "				\033[1;32m...3\033[0m"
			sleep 1s 
			echo -e "				\033[1;33m..2\033[0m"
			sleep 1s
			echo -e "				\033[1;34m.1\033[0m"
			sleep 1s
			menu
		;;
	esac
}

#################  PÁGINA INCIAL #################
if [ "$#" == "0" ]
then
	intro
fi

############## PARÂMETRO ##############
case $1 in
	start|START|Start)
		clear
		echoes
		menu
	;;			
	help|HELP|Help)
		clear
		echoes
		ajuda
	;;
esac











