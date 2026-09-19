extends RefCounted

static func get_story() -> Dictionary:
	return {
		"1": {
			"pages": ["Você é um trabalhador prestes a atravessar os enormes portões metálicos dos Laboratórios do Governo Universal.\n\nO ar entra e sai rapidamente dos seus pulmões. Antes de dar o primeiro passo, você decide ignorar a pergunta que assombra os seus dias: o que você irá encontrar entre os vácuos da sua rotina de trabalho nesse lugar?"],
			"art": ["res://art/1.txt"],
			"choices": [
				{"label": "Ir para o trabalho.", "next": "2"},
				{"label": "Ficar em casa e faltar sem autorização.", "next": "17"}
			]
		},
		"2": {
			"pages": ["Como no dia anterior e no dia antes desse, você se apresenta no vestiário dos Laboratórios, cheio de outras caras cansadas.\n\nHoje, os uniformes são entregues limpos e aquecidos, recém-saídos da esterilização.", "\"Eles até lavam a nossa roupa em dia de limpeza, né?\"\n\nUm homem ainda não identificado pelo uniforme te dirige a palavra. Hoje é dia de limpeza: exames e procedimentos que garantem a saúde dos trabalhadores e a eficácia do trabalho."],
			"art": ["res://art/2.txt"],
			"choices": [
				{"label": "Rir e comentar que os exames são desconfortáveis.", "next": "3"},
				{"label": "Concordar em silêncio. Parece mais seguro.", "next": "5"}
			]
		},
		"3": {
			"pages": ["O homem sorri e sussurra:\n\n\"Isso é esquisito mesmo… eles fazem coisas que a gente não entende… experimentos, esse tipo de coisa, sabe?\"\n\nA conversa está ficando perigosa. Alguns guardas parecem desconfiados."],
			"art": ["res://art/3.txt"],
			"choices": [
				{"label": "Negar, mas demonstrar interesse.", "next": "4"},
				{"label": "Encerrar o diálogo e seguir de cabeça baixa.", "next": "5"},
				{"label": "Desafiar um dos guardas que te encara.", "next": "18"}
			]
		},
		"4": {
			"pages": ["O homem encara os guardas e volta a falar:\n\n\"Eu tenho amigos tentando descobrir pra onde vai o material coletado na limpeza. Eu te conto o que sei e você me diz o que sabe.\"\n\nVocê diz que só conhece boatos. Ele olha seu número de identificação.\n\n\"Me encontra aqui no vestiário depois do expediente.\""],
			"art": ["res://art/4.txt"],
			"choices": [
				{"label": "Encontrar o homem no fim do dia.", "next": "15"},
				{"label": "Denunciá-lo para os guardas.", "next": "21"}
			]
		},
		"5": {
			"pages": ["Devidamente uniformizado, você aguarda sua vez de passar pela limpeza. O silêncio prolonga a espera por dezenas de minutos.", "A sala branca tem um cheiro característico. Uma enfermeira mede seu peso e prepara uma injeção.\n\nEla pergunta se você observou alguma alteração na saúde nos últimos dias. Sua memória lembra de espirros e febre leve, curados por uma infusão de ervas da vizinha."],
			"art": ["res://art/5.txt"], 
			"choices": [
				{"label": "Mentir e dizer que não observou nada.", "next": "6"},
				{"label": "Contar sobre os sintomas e a infusão.", "next": "7"}
			]
		},
		"6": {
			"pages": ["A enfermeira injeta a substância no seu braço. Os resultados preliminares saem rapidamente.\n\nAparentemente está tudo bem, mas há falta de vitaminas. Ela te oferece um pequeno comprimido."],
			"art": ["res://art/6.txt"],
			"choices": [{"label": "Tomar o comprimido e iniciar o trabalho.", "next": "16"}]
		},
		"7": {
			"pages": ["Enquanto você fala, a enfermeira tranca a porta, aciona os guardas e coloca uma máscara estranha.\n\nArmas apontam para o espaço entre seus olhos. Ela coleta sua saliva e deposita a amostra em uma câmara conectada aos computadores."],
			"art": ["res://art/7.txt"],
			"choices": [{"label": "Aguardar o resultado do teste.", "random_next": ["8", "9"]}]
		},
		"8": {
			"pages": ["POSITIVO.\n\nA enfermeira aperta um botão. Um sinal irritante indica que a área foi selada. Não há tempo para gritar. Os guardas atiram."],
			"art": ["res://art/8.txt"],
			"ending": "FINAL 1",
			"choices": [{"label": "Voltar para a limpeza", "next": "5"}]
		},
		"9": {
			"pages": ["NEGATIVO.\n\nA enfermeira se alivia e dispensa os guardas. Antes de abrir a porta, sussurra:\n\n\"Não conta pra ninguém sobre essas ervas, entendido?\""],
			"art": ["res://art/9.txt"],
			"choices": [
				{"label": "Iniciar o trabalho.", "next": "10"},
				{"label": "Tentar sair correndo dali.", "next": "12"}
			]
		},
		"10": {
			"pages": ["No caminho até a linha de produção, você está sozinho no corredor. A imagem das armas ao seu redor ainda te aterroriza.", "Você chega ao posto, esteriliza as mãos, coloca máscara e touca. Verifica os grãos na esteira com as mãos trêmulas.\n\nDepois de uma ou duas horas, o sinal do almoço toca. Você sente que pode perder o controle."],
			"art": ["res://art/10.txt"],
			"choices": [{"label": "Ir ao refeitório.", "next": "11"}, {"label": "Tentar sair correndo dali.", "next": "12"}]
		},
		"11": {
			"pages": ["No refeitório, você recebe sua porção diária e ingere um líquido que não é água. Isso te acalma.\n\nLogo o sinal toca novamente. Hora de voltar para a linha. O dia está perto de acabar, mas você está exausto."],
			"art": ["res://art/11.txt"],
			"choices": [
				{"label": "Tirar um cochilo rápido no banheiro.", "next": "22"},
				{"label": "Voltar ao trabalho.", "next": "13"}
			]
		},
		"12": {
			"pages": ["Você passa pelos corredores devagar, afogado em desespero.\n\nPróximo ao vestiário, algo perfura seu peito. Não houve barulho. Em um último esforço, você grita por socorro, mas ninguém vem."],
			"art": ["res://art/12.txt"],
			"ending": "FINAL 2",
			"choices": [{"label": "Voltar para a linha de produção", "next": "10"}]
		},
		"13": {
			"pages": ["Após algumas horas na linha, o cheiro da soja te enjoa. Você vai ao vestiário, retira o uniforme e veste suas roupas civis."],
			"art": ["res://art/13.txt"],
			"choices": [{"label": "Ir embora.", "next": "14"}, {"label": "Descansar e esperar no vestiário.", "next": "15"}]
		},
		"14": {
			"pages": ["Você caminha de volta para casa em silêncio. Você sobreviveu a mais um dia.\n\nUma mulher vende flores no caminho. Você pega uma onze-horas com a promessa de pagar depois e a coloca no chão.\n\nA flor será o sudário de um mundo que nunca existiu — ou que você nunca viu."],
			"art": ["res://art/14.txt"],
			"ending": "FINAL 4",
			"choices": [{"label": "Recomeçar", "next": "1"}]
		},
		"15": {
			"pages": ["Depois de um dia intenso, você espera no vestiário. Após 30 minutos, um homem aparece. Ele não parece trabalhador, nem guarda.\n\nEle sorri e aponta uma arma na sua direção.\n\n\"Tava querendo meter o nariz onde não deve, né?\"", "Ele te leva até uma cabine. Há uma pilha de corpos. Um deles é o homem com quem você conversou mais cedo.\n\nO disparo não faz barulho. Sua vida escapa enquanto o seu assassino joga uma flor no seu peito."],
			"art": ["res://art/15.txt"],
			"ending": "FINAL 3",
			"choices": [{"label": "Voltar ao início", "next": "1"}]
		},
		"16": {
			"pages": ["Depois de um dia exaustivo de trabalho, você se dirige ao vestiário, retira o uniforme e veste suas roupas civis."],
			"art": ["res://art/16.txt"],
			"choices": [{"label": "Ir embora.", "next": "14"}, {"label": "Esperar mais um pouco no vestiário.", "next": "15"}]
		},
		"17": {
			"pages": ["Você decide tirar o dia para descansar, sem justificativa. Enquanto seus vizinhos seguem para o trabalho, alguns olham sua janela com receio.", "Horas depois, guardas arrombam sua porta e te agarram.\n\n\"Você não cumpriu seu dia de trabalho obrigatório. Terá 24 horas para se recuperar e deverá comparecer ao trabalho, do contrário será banido.\n\n\"Um deles corta um dos seus dedos. Uma enfermeira faz um curativo improvisado.\""],
			"choices": [{"label": "Se recuperar e voltar ao trabalho.", "next": "25"}]
		},
		"18": {
			"pages": ["Você interrompe a conversa e caminha em direção a um guarda. Os outros trabalhadores desviam o olhar.\n\nEle aponta a arma e ordena:\n\n\"Dá meia-volta, peão!\""],
			"art": ["res://art/18.txt"],
			"choices": [
				{"label": "Correr na direção do guarda.", "next": "19"},
				{"label": "Dar meia-volta e obedecer.", "next": "20"}
			]
		},
		"19": {
			"pages": ["Ao menor movimento, o guarda dispara. Não há um segundo para pensar.\n\nVocê vê o próprio sangue se espalhando ao seu redor."],
			"ending": "FINAL 5",
			"choices": [{"label": "Voltar ao início", "next": "1"}]
		},
		"20": {
			"pages": ["Você encara o guarda e decide obedecer. Quando vira as costas, ouve o disparo e sente a bala atravessar sua pele.\n\nDesafiar uma autoridade já foi suficiente. Você foi banido."],
			"ending": "FINAL 6",
			"choices": [{"label": "Voltar para a conversa", "next": "3"}]
		},
		"21": {
			"pages": ["Antes de sair do vestiário, você se aproxima dos guardas e denuncia o homem. Eles imediatamente ordenam que ele os acompanhe.\n\nEle olha para você pela última vez, com desdém."],
			"art": ["res://art/21.txt"],
			"choices": [{"label": "Seguir para a limpeza.", "next": "5"}]
		},
		"22": {
			"pages": ["Você entra em uma cabine do banheiro e cochila até o sinal tocar. No caminho de volta, vê uma mulher do setor de comunicação discutindo com um jovem desconhecido.", "Ao te avistarem, eles se separam. O jovem esconde algo no uniforme e segue por outro corredor."],
			"art": ["res://art/22.txt"],
			"choices": [
				{"label": "Segui-lo com cuidado.", "next": "23"},
				{"label": "Continuar o caminho de volta ao trabalho.", "next": "24"}
			]
		},
		"23": {
			"pages": ["Sua curiosidade vence. Você segue o homem por um corredor mal iluminado e o perde de vista.\n\nEle te surpreende com um pedaço de vidro e golpeia seu pescoço. Enquanto você dá os últimos suspiros, ele diz enlouquecido:\n\n\"Você nunca irá me parar, eu sou a Primeira Estrela!\""],
			"ending": "FINAL 8",
			"choices": [{"label": "Voltar ao início", "next": "1"}]
		},
		"24": {
			"pages": ["Você chega dois minutos atrasado à linha de produção. Os guardas informam a punição: um pequeno desconto no pagamento ao final do mês."],
			"choices": [{"label": "Voltar ao trabalho.", "next": "13"}]
		},
		"25": {
			"pages": ["Após 24 horas de recuperação, você volta a atravessar os enormes portões metálicos dos Laboratórios do Governo Universal.\n\nO ar entra e sai rapidamente dos seus pulmões. Mais uma vez, você ignora a pergunta sobre o que encontrará entre os vácuos da rotina."],
			"art": ["res://art/25.txt"],
			"choices": [{"label": "Ir para o trabalho.", "next": "2"}]
		}
	}
