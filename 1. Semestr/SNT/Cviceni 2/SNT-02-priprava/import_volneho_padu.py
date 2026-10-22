import pandas as pd
import matplotlib.pyplot as plt
import numpy as py

df = pd.read_csv('volny_pad_vzor.csv')
t, s = df['t'], df['s']
print(s.mean(), s.max())

plt.plot(t, s)
plt.xlabel('t [s]'); plt.ylabel('s [m]')
plt.grid(True); plt.show()
