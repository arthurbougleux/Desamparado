import matplotlib.pyplot as plt
import pandas as pd

# 1. Carrega os dados a partir do arquivo 'resp.csv'
df = pd.read_csv("resp.csv")

# 2. Identifica e limpa as colunas de tempo
# O pandas renomeia as colunas repetidas para 'Tempo', 'Tempo.1' e 'Tempo.2'
colunas_tempo = ["Tempo GBBS", "Tempo", "Tempo.1", "Tempo.2"]

for col in colunas_tempo:
    df[col] = pd.to_numeric(df[col], errors="coerce")

# Remove linhas onde o Nome esteja nulo
df = df.dropna(subset=["Nome"])

# 3. FILTRO: Substitui por NaN qualquer valor de tempo que seja MAIOR que 24 segundos
# Usamos .loc para evitar avisos de cópia no pandas
for col in colunas_tempo:
    df.loc[df[col] > 24, col] = None

# Opcional: Se você quiser sumir completamente com as instâncias onde TODOS os tempos
# passaram de 24s, descomente a linha abaixo:
# df = df.dropna(subset=colunas_tempo, how='all')

# 4. Configuração do tamanho da imagem
plt.figure(figsize=(16, 8))

# 5. Plotagem das linhas (o matplotlib ignora os valores 'None/NaN' automaticamente, deixando o espaço em branco)
plt.plot(
    df["Nome"],
    df["Tempo GBBS"],
    label="GBBS",
    color="blue",
    marker="o",
    linewidth=1.5,
)
plt.plot(
    df["Nome"],
    df["Tempo"],
    label="Kissat",
    color="orange",
    marker="s",
    linewidth=1.5,
)
plt.plot(
    df["Nome"],
    df["Tempo.1"],
    label="Kissat-Mab",
    color="green",
    marker="^",
    linewidth=1.5,
)
# 6. Customização do Gráfico e Definição da Escala Correta
plt.title(
    "Tempo",
    fontsize=14,
    fontweight="bold",
)
plt.xlabel("Instâncias", fontsize=12)
plt.ylabel("Tempo", fontsize=12)

# Força o eixo Y a ir estritamente de 0 até 24 segundos
plt.ylim(0, 24)

# Rotaciona os nomes do Eixo X em 90 graus
plt.xticks(rotation=90, fontsize=9)

# Linhas de grade para facilitar a leitura
plt.grid(True, linestyle="--", alpha=0.5)

# Posiciona a legenda
plt.legend(fontsize=11, loc="upper right")

# Ajusta as margens
plt.tight_layout()

# 7. Exibe o gráfico na tela
plt.show()
