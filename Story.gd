extends RefCounted

static func get_story() -> Dictionary:
	return {
		"1": {
			"pages": ["Você é um trabalhador prestes a atravessar os enormes portões metálicos dos Laboratórios do Governo Universal.\n\nO ar entra e sai rapidamente dos seus pulmões. Antes de dar o primeiro passo, você decide ignorar a pergunta que assombra os seus dias: o que você irá encontrar entre os vácuos da sua rotina de trabalho nesse lugar?"],
			"choices": [{"label": "Avançar", "next": "2"}]
		},
		"2": {
			"pages": ["Como no dia anterior e no dia antes desse, você se apresenta no vestiário dos Laboratórios, cheio de outras caras cansadas.\n\nHoje os uniformes são entregues limpos e aquecidos, recém-saídos da esterilização.", "\"Eles até lavam a nossa roupa em dia de limpeza, né?\"\n\nUm homem ainda não identificado pelo uniforme te dirige a palavra. Hoje é dia de limpeza: exames e procedimentos que garantem a saúde dos trabalhadores e a eficácia do trabalho."],
			"choices": [
				{"label": "Rir e comentar que os exames são desconfortáveis.", "next": "3"},
				{"label": "Concordar em silêncio. Parece mais seguro.", "next": "5"}
			]
		},
		"3": {
			"pages": ["O homem sorri e sussurra:\n\n\"Isso é esquisito mesmo… eles fazem coisas que a gente não entende… experimentos, esse tipo de coisa, sabe?\"\n\nA conversa está ficando perigosa. Alguns guardas parecem desconfiados."],
			"choices": [
				{"label": "Negar, mas demonstrar interesse.", "next": "4"},
				{"label": "Encerrar o diálogo e seguir de cabeça baixa.", "next": "5"}
			]
		},
		"4": {
			"pages": ["O homem encara os guardas e volta a falar:\n\n\"Eu tenho amigos tentando descobrir pra onde vai o material coletado na limpeza. Eu te conto o que sei e você me diz o que sabe.\"\n\nVocê diz que só conhece boatos. Ele olha seu número de identificação.\n\n\"Me encontra aqui no vestiário depois do expediente.\""],
			"choices": [{"label": "Encontrar o homem no fim do dia.", "next": "15"}]
		},
		"5": {
			"pages": ["Devidamente uniformizado, você aguarda sua vez de passar pela limpeza. O silêncio prolonga a espera por dezenas de minutos.", "A sala branca tem um cheiro característico. Uma enfermeira mede seu peso e prepara uma injeção.\n\nEla pergunta se você observou alguma alteração na saúde nos últimos dias. Sua memória lembra espirros e febre leve, curados por uma infusão de ervas da vizinha."],
			"choices": [
				{"label": "Mentir e dizer que não observou nada.", "next": "6"},
				{"label": "Contar sobre os sintomas e a infusão.", "next": "7"}
			]
		},
		"6": {
			"pages": ["A enfermeira injeta a substância no seu braço. Os resultados preliminares saem rapidamente.\n\nAparentemente está tudo bem, mas há falta de vitaminas. Ela oferece um pequeno comprimido."],
			"choices": [{"label": "Tomar o comprimido e iniciar o trabalho.", "next": "16"}]
		},
		"7": {
			"pages": ["Enquanto você fala, a enfermeira tranca a porta, aciona os guardas e coloca uma máscara estranha.\n\nArmas apontam para o espaço entre seus olhos. Ela coleta sua saliva e deposita a amostra em uma câmara conectada aos computadores."],
			"choices": [{"label": "Aguardar o resultado do teste.", "random_next": ["8", "9"]}]
		},
		"8": {
			"pages": ["POSITIVO.\n\nA enfermeira aperta um botão. Um sinal irritante indica que a área foi selada. Não há tempo para gritar. Os guardas atiram."],
			"ending": "FINAL 1",
			"choices": [{"label": "Recomeçar", "next": "1"}]
		},
		"9": {
			"pages": ["NEGATIVO.\n\nA enfermeira se alivia e dispensa os guardas. Antes de abrir a porta, sussurra:\n\n\"Não conta pra ninguém sobre essas ervas, entendido?\""],
			"choices": [{"label": "Iniciar o trabalho do dia.", "next": "10"}]
		},
		"10": {
			"pages": ["No caminho até a linha de produção, você está sozinho no corredor. A imagem das armas ao seu redor ainda te aterroriza.", "Você chega ao posto, esteriliza as mãos, coloca máscara e touca. Verifica os grãos na esteira com as mãos trêmulas.\n\nDepois de uma ou duas horas, o sinal do almoço toca. Você sente que pode perder o controle."],
			"choices": [{"label": "Ir ao refeitório.", "next": "11"}, {"label": "Tentar sair correndo dali.", "next": "12"}]
		},
		"11": {
			"pages": ["No refeitório, você recebe sua porção diária e ingere um líquido que não é água. Isso te acalma.\n\nLogo o sinal toca novamente. Hora de voltar para a linha. O dia está perto de acabar."],
			"choices": [{"label": "Voltar para a linha.", "next": "13"}]
		},
		"12": {
			"pages": ["Você descarta os equipamentos e passa pelos corredores devagar, afogado em desespero.\n\nPróximo ao vestiário, algo perfura seu peito. Não houve barulho. Em um último esforço, você grita por socorro, mas ninguém vem."],
			"ending": "FINAL 2",
			"choices": [{"label": "Recomeçar", "next": "1"}]
		},
		"13": {
			"pages": ["Após algumas horas na linha, o cheiro da soja te enjoa. Você vai ao vestiário, retira o uniforme e veste suas roupas civis."],
			"choices": [{"label": "Ir embora.", "next": "14"}, {"label": "Descansar e esperar no vestiário.", "next": "15"}]
		},
		"14": {
			"pages": ["Você caminha de volta para casa em silêncio, sem acreditar que sobreviveu.\n\nUma mulher vende flores no caminho. Você pega uma onze-horas com a promessa de pagar depois e a coloca no chão.\n\nA flor será o sudário de um mundo que nunca existiu — ou que você nunca viu."],
			"ending": "FINAL 4",
			"choices": [{"label": "Recomeçar", "next": "1"}]
		},
		"15": {
			"pages": ["Depois de um dia intenso, você espera no vestiário. Após 30 minutos, um homem aparece. Ele não parece trabalhador nem guarda.\n\nEle sorri e aponta uma arma.\n\n\"Tava querendo meter o nariz onde não deve, né?\"", "Ele te leva até uma cabine. Há uma pilha de corpos. Um deles é o homem com quem você conversou mais cedo.\n\nO disparo não faz barulho. Sua vida escapa enquanto ele joga uma flor no seu peito."],
			"ending": "FINAL 3",
			"choices": [{"label": "Voltar ao início", "next": "1"}]
		},
		"16": {
			"pages": ["Depois de um dia exaustivo de trabalho, você se dirige ao vestiário, retira o uniforme e veste suas roupas civis."],
			"choices": [{"label": "Ir embora.", "next": "14"}, {"label": "Esperar mais um pouco no vestiário.", "next": "15"}]
		}
	}
