#!/usr/bin/env python
# coding: utf-8

# In[1]:


import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import plotly.graph_objs as go
from plotly.offline import download_plotlyjs, init_notebook_mode, plot, iplot 


# In[3]:


report_2020= pd.read_csv("/Users/mariazarnecka/Desktop/JA/Data_Science/InfoShare/Projekt/jdszr12-r2d2/archive (8)/2020.csv")
report_2021= pd.read_csv("/Users/mariazarnecka/Desktop/JA/Data_Science/InfoShare/Projekt/jdszr12-r2d2/archive (8)/2021.csv")
report_2022= pd.read_csv("/Users/mariazarnecka/Desktop/JA/Data_Science/InfoShare/Projekt/jdszr12-r2d2/archive (8)/2022.csv")
report_2019= pd.read_csv("/Users/mariazarnecka/Desktop/JA/Data_Science/InfoShare/Projekt/jdszr12-r2d2/archive (8)/2019.csv")


# In[4]:


report_2019.head()


# In[5]:


report_2020.head()


# In[6]:


report_2021.head()


# In[7]:


report_2022.head()


# In[10]:


import plotly.graph_objs as go
from plotly.offline import download_plotlyjs, init_notebook_mode, plot, iplot 
init_notebook_mode(connected=True)
data = dict(type = 'choropleth', 
           locations = report_2019['Country or region'],
           locationmode = 'country names',
           z = report_2019['Score'], 
           text = report_2019['Country or region'],
           colorbar = {'title':'Happiness'})
layout = dict(title = 'Global Happiness 2019', 
             geo = dict(showframe = False))
choromap3 = go.Figure(data = [data], layout=layout)
iplot(choromap3)


# In[11]:


import plotly.graph_objs as go
from plotly.offline import download_plotlyjs, init_notebook_mode, plot, iplot 
init_notebook_mode(connected=True)
data = dict(type = 'choropleth', 
           locations = report_2020['Country name'],
           locationmode = 'country names',
           z = report_2020['Ladder score'], 
           text = report_2020['Country name'],
           colorbar = {'title':'Happiness'})
layout = dict(title = 'Global Happiness 2020', 
             geo = dict(showframe = False))
choromap3 = go.Figure(data = [data], layout=layout)
iplot(choromap3)


# In[13]:


import plotly.graph_objs as go
from plotly.offline import download_plotlyjs, init_notebook_mode, plot, iplot 
init_notebook_mode(connected=True)
data = dict(type = 'choropleth', 
           locations = report_2021['Country name'],
           locationmode = 'country names',
           z = report_2021['Ladder score'], 
           text = report_2021['Country name'],
           colorbar = {'title':'Happiness'})
layout = dict(title = 'Global Happiness 2021', 
             geo = dict(showframe = False))
choromap3 = go.Figure(data = [data], layout=layout)
iplot(choromap3)

