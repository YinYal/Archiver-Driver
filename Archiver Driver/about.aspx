<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Archiver_Driver.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main class="mt-3">


        <!--
        <div>
            <img src="assets/workers-at-an-it-company-working-on-a-computer.jpg" alt="Equipe de desenvolvedores" height="300" width="500"/>
        </div>
        -->

        <div class="container-fluid d-block">
            <div class="img-thumbnail text-center col-5 float-start me-2">
                <img class="rounded img-fluid" src="assets/workers-at-an-it-company-working-on-a-computer.jpg" alt="Desenvolvedores da Woop!Applications" />
                <p class="pt-2">Equipe da <a href="https://github.com/YinYal" target="_blank">Woop! Applications</a>.</p>
            </div>

            <div class="fs-5">
                <h2 class="text-center mb-2">Sobre nós</h2>
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nós somos a <a href="https://github.com/YinYal" target="_blank"><strong>Woop! Applications</strong></a> uma empresa nascida no Senac com o intuito de desenvolver ferramentas mais objetivas e mais simples.
                </p>
            </div>
            <div class="d-block fs-5">
                <h2 class="text-center mb-2">Sobre o projeto</h2>
                <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Este é o nosso primeiro projeto, o <strong>Archiver Driver</strong>, um gerenciador de arquivos PDF.
                    Uma aplicação criada no formato <strong>SPA e MVC</strong>, as nossas linhas de conexão com o banco de dados foram criadas em <strong>C#</strong> e o banco de dados foi criado em <strong>SQL server</strong>. Utilizamos a ferramenta <strong>bootstrap</strong>
                    para toda a estilização e responsividade do template base.
                </p>
            </div>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
        </div>
    </main>
</asp:Content>
