<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Archiver_Driver.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main class="mt-3 fs-5">
        <div class="container-fluid d-block">
            <div class="img-thumbnail text-center col-5 float-start me-2">
                <img class="rounded img-fluid" src="assets/workers-at-an-it-company-working-on-a-computer.jpg" alt="Desenvolvedores da Woop!Applications" />
                <p class="pt-2">Equipe da <a href="https://github.com/YinYal" target="_blank">Woop! Applications</a>.</p>
            </div>

            <div class="">
                <h2 class="text-center mb-2">Sobre nós</h2>
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nós somos a <a href="https://github.com/YinYal" target="_blank"><strong>Woop! Applications</strong></a> uma empresa nascida no Senac com o intuito de desenvolver ferramentas mais objetivas e mais simples. Somos 5 desesenvolvedores que 
                    não entendiam nada de programação e bem pouco sobre computadores e afins, mas mesmo assim nos empenhamos e demos o nosso melhor para desenvolvermos o melhor trabalho possivel.

                </p>
            </div>

            <div class="d-block">
                <h2 class="text-center mb-2">Sobre o projeto</h2>
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Este é o nosso primeiro projeto, o <strong>Archiver Driver</strong>, um gerenciador de arquivos PDF.
                    Uma aplicação criada no formato <strong>SPA e MVC</strong>, as nossas linhas de conexão com o banco de dados foram criadas em <strong>C#</strong> e o banco de dados foi criado em <strong>SQL server</strong>. Utilizamos a ferramenta <strong>bootstrap</strong>
                    para toda a estilização e responsividade do template base.
                </p>
            </div>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>


            <div class="rounded-pill bg-dark p-1 mt-2 d-flex align-items-center fw-bolder">
                <img src="assets/herick bartholo.jpeg" alt="Herick Bartholo" class="rounded-circle me-1" height="80" width="80" />
                <p class="text-white">Olá, Me chamo Herick Bartholo e essas são minhas redes de contato:</p>
                <a href="https://github.com/YinYal" class="d-inline d-none"><i class="fab fa-github-square"></i> GitHub.com</a>
                <a href="#" class="d-inline d-none">A</a>
            </div>

            <div class="rounded-pill bg-dark p-1 mt-2 d-flex align-items-center fw-bolder">
                <img src="assets/matheus allen.jpeg" alt="Matheus Allen" class="rounded-circle me-1" height="80" width="80" />
                <p class="text-white">Meu nome é Matheus Allen, minhas redes para contato:</p>
                <a href="https://github.com/Matheus-Allen" class="d-inline d-none"><i class="fab fa-github-square"></i> GitHub.com</a>
                <a href="https://linkedin.com/in/matheus-allen-a1453017b" class="d-inline d-none"><i class="fab fa-linkedin"></i> Linkedin.com</a>
            </div>
        </div>
    </main>
</asp:Content>
