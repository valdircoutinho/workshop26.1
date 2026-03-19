import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

# -------------------------
# 1. NUMPY
# -------------------------

# Dias da semana
dias = ["Seg", "Ter", "Qua", "Qui", "Sex", "Sab", "Dom"]

# Gerar 7 temperaturas aleatórias entre 20 e 35
temperaturas = np.random.randint(20, 38, size=7)

print("Temperaturas:", temperaturas)


# -------------------------
# 2. PANDAS
# -------------------------

# Criando DataFrame
df = pd.DataFrame({
    "Dia": dias,
    "Temperatura": temperaturas
})

print("\nDataFrame:")
print(df)

# Média
media = df["Temperatura"].mean()

# Máxima e mínima
max_temp = df["Temperatura"].max()
min_temp = df["Temperatura"].min()

print("\nMédia:", media)
print("Máxima:", max_temp)
print("Mínima:", min_temp)


# -------------------------
# 3. MATPLOTLIB
# -------------------------

#Gráfico 1: Linha
plt.figure()
plt.plot(df["Dia"], df["Temperatura"],
    color='blue',
    marker='o',
    markerfacecolor='blue',
    markeredgecolor='black')
plt.fill_between(df["Dia"], df["Temperatura"], color='lightblue', alpha=0.3)
plt.grid(True)
plt.title("Temperatura  semanal em João Pessoa - PB ",fontsize=14, fontweight='bold')
plt.xlabel("Dias",fontsize=12)
plt.ylabel("Temperatura (°C)",fontsize=12)
plt.show()

# Gráfico 2: Pontos
plt.figure()
plt.plot(df["Dia"], df["Temperatura"], marker='o',color='blue')
plt.fill_between(df["Dia"], df["Temperatura"], color='lightblue', alpha=0.3)
plt.title("Temperatura em João Pessoa - PB (Com Pontos)",fontsize=14, fontweight='bold')
plt.xlabel("Dias")
plt.ylabel("Temperatura (°C)",fontsize=12)
plt.show()

# Gráfico 3: Linha com estilo diferente
plt.figure()
plt.plot(df["Dia"], df["Temperatura"], linestyle='--',color='blue', marker='o', markerfacecolor='blue', markeredgecolor='black')
plt.fill_between(df["Dia"], df["Temperatura"], color='lightblue', alpha=0.3)
plt.title("Temperatura em João Pessoa - PB (Linha Tracejada)",fontsize=14, fontweight='bold')
plt.xlabel("Dias")
plt.ylabel("Temperatura (°C)",fontsize=12)
plt.show()