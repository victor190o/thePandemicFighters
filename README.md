# Instruções

---

Copie este repositório para uma pasta local na sua máquina, com o comando:

```markdown
git clone https://github.com/victor190o/thePandemicFighters.git
```

Após clonado, você vai ter o repositório na sua máquina local:

![image-20210421224909958](C:\Users\sansa\AppData\Roaming\Typora\typora-user-images\image-20210421224909958.png)

Então, entre no programa Godot e importe o projeto dele:

![image-20210421225018239](C:\Users\sansa\AppData\Roaming\Typora\typora-user-images\image-20210421225018239.png)

Para isso só clicar no Import e ir até a pasta que vocês clonaram o repositório do GitHub, ali você seleciona o project.godot e você pegara o projeto.

Após vocês finalizarem suas edições no jogo, vocês vão no seu aplicativo de controle de repositórios seja o Git Bash ou GitHub Desktop, etc. Para fins educativos utilizarei o Git Bash (que já vem instalado ao instalar o Git na sua máquina):

![image-20210421225233615](C:\Users\sansa\AppData\Roaming\Typora\typora-user-images\image-20210421225233615.png)

![image-20210421225258078](C:\Users\sansa\AppData\Roaming\Typora\typora-user-images\image-20210421225258078.png)

Daí você utiliza o comando:

```
git status
```

E você verá os arquivos que você editou porém não estão atualizados no seu repositório local, então você utilizara o comando:

```
git add .
```

![image-20210421225356302](C:\Users\sansa\AppData\Roaming\Typora\typora-user-images\image-20210421225356302.png)

Após isso, você finalizara com o comando:

```
git commit -m "Mensagem que você deseja colocar neste commit"
```

![image-20210421225513114](C:\Users\sansa\AppData\Roaming\Typora\typora-user-images\image-20210421225513114.png)

E após esse comando, você enviara todas seus commits locais para o repositório online hospedado no GitHub:

```
git push
```

![image-20210421225616848](C:\Users\sansa\AppData\Roaming\Typora\typora-user-images\image-20210421225616848.png)



### Após isso já estará tudo OK e você terá mandado suas alterações para o repositório online!

Lembrando que toda vez que você for iniciar os seus trabalhos você tem que rodar o comando git pull para pegar todas as alterações feitas pelos demais integrantes do grupo:

```
git pull
```

![image-20210421225726043](C:\Users\sansa\AppData\Roaming\Typora\typora-user-images\image-20210421225726043.png)