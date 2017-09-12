# Sphinx文档起步

**教程**

- [使用Sphinx撰写电子文档](http://www.yangbajing.me/2017/09/12/%E4%BD%BF%E7%94%A8sphinx%E6%92%B0%E5%86%99%E7%94%B5%E5%AD%90%E6%96%87%E6%A1%A3/)

## 关于PDF中文

Sphinx是通过latex来生成PDF的，所以要解决PDF中文乱码问题就要从latex着手。本模板使用了Google Noto字体，这个字体在现代Linux系统都可以从源直接安装，Windows/Mac 系统用户请从 Google Noto 字体官方寻找安装手册。


```python
    'preamble': '''
\\usepackage{xeCJK}
\\usepackage{indentfirst}
\\setlength{\\parindent}{2em}
\\setCJKmainfont{Noto Serif CJK SC}
\\setCJKmonofont[Scale=0.9]{Noto Sans Mono CJK SC}
\\setCJKfamilyfont{song}{Noto Sans CJK SC}
\\setCJKfamilyfont{sf}{Noto Sans CJK SC}
'''

使用如下步骤编译PDF文件（注意：这里需要运行两次`xelatex *.tex` 才能生成正常的带目录索引的PDF文档）：

```
make latex
cd build/latex/
xelatex *.tex
xelatex *.tex
```

生成的PDF文件名为： **sphinx.pdf**。

xelatex 需要安装 **texlive**，***注意：不要使用Linux源里的texlive，一定要使用官方的发行版（DVD）***。下载地址：[http://mirrors.ustc.edu.cn/CTAN/systems/texlive/Images/](http://mirrors.ustc.edu.cn/CTAN/systems/texlive/Images/) 。

