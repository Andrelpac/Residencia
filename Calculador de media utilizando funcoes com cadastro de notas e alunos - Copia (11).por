programa	 			
	}
	
		funcao cadastrarAlunos(logico teste){
			se(teste == verdadeiro){
				escreva("Digite a quantidade de alunos que deseja cadastrar: ")
				leia(qtdAlunos)
				limpa()
				contador = 0
			
					enquanto(contador < qtdAlunos){
						escreva("Digite o nome do " + (contador + 1) + "º aluno: ")
						leia(nomes[contador])
						contador++	
					}
					limpa()
				cadastrarNotas(qtdAlunos)
				fazerMedia(qtdAlunos)
				emitirRelatorio()		
			}
			senao{
				teste= falso
				}
			limpa()		
		}
		funcao cadastrarNotas(inteiro numAlunos){
			para(inteiro l = 0; l < numAlunos; l++){
				para(inteiro c = 0; c <4; c++ ){
					escreva("Digite a nota de "+ nomes[l] + " para o "+ (c + 1) + "º bimestre: ")
					leia(notas[l][c])					
				}
				limpa()
			}
			limpa()
		}
		
		funcao fazerMedia(inteiro numAlunos){
			
			para(inteiro l= 0; l < numAlunos; l++){
				real soma = 0.0
				para(inteiro c = 0; c < 4; c++){				
					soma = (soma + notas[l][c])
				}			
					media[l] = (soma / 4)
					escreva(nomes[l] + " teve média: " + media[l])
					escreva("\n")
			}	
		}

		funcao emitirRelatorio(){
		caracter relatorio
		logico condicao = verdadeiro
		
		enquanto(condicao == verdadeiro){
			escreva("Deseja emitir um relatório? (Sim/Não)")
			leia(relatorio)

			se(relatorio == 'S' ou relatorio == 's'){
				inteiro aluno
					escreva("Digite o número do aluno: ")
					leia(aluno)
					aluno = aluno-1
					limpa()
			
				cadeia aprovado
					se(media[aluno]>=7){
						aprovado="APROVADO"
					}senao{
						aprovado="REPROVADO"
					}
			
						escreva("=================","\n")
						escreva("  Aluno/Aluna: "+nomes[aluno],"\n")
						escreva("-----------------","\n")
						escreva("    1B  :  "+notas[aluno][0],"\n")
						escreva("    2B  :  "+notas[aluno][1],"\n")
						escreva("    3B  :  "+notas[aluno][2],"\n")
						escreva("    4B  :  "+notas[aluno][3],"\n")
						escreva("-----------------","\n")
						escreva("  Média : "+media[aluno],"\n")
						escreva(nomes[aluno]+ " foi "+aprovado,"\n")
						escreva("=================")
						escreva("\n")
		}
		
		senao se(relatorio == 'N' ou relatorio == 'n'){
				limpa()
				escreva("Até a próxima!! ;)")
				condicao = falso
		}senao{
				limpa()
				escreva("Digite uma opção válida!")
				escreva("\n")
				condicao = verdadeiro
			}
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1337; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
