#!/usr/bin/env python
# coding: utf-8

# This little snippet will take a list of strings and replace the don't with dont and the Don't with Dont. 
# I really want to learn how to use regex... so I messed with this. 
# I thought it might help with the cluster analysis/stopwords issues. 

# In[1]:


import re
#l = ['oneXXX twoXXXbbb', "three999don't ", "0001don't22"]
#l_re_sub = [re.sub("(.*)don't(.*)", r'\2dont\1', s) for s in l if re.match(".*don't.*", s)]
# https://note.nkmk.me/en/python-list-str-select-replace/
# This command "re" is very powerful. What this does is take any thing that has a don't and replaces it 
# with a dont without changing anything else. 
test = ["The faculty and staff don't know"," Don't what they're doing and care don't deeply about your success. Don't. don't. know."]
l_re_sub = [re.sub("(.)don't(.)", r'\1dont\2', s) for s in test] #if re.match("*don't.*", s)]
test = l_re_sub
l_re_sub = [re.sub("(.)Don't(.)", r'\1Dont\2', s) for s in test]# if re.match(".*Don't.*", s)]


print(l_re_sub)


# In[ ]:




