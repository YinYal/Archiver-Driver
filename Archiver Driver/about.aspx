<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Archiver_Driver.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Sobre - Archiver Driver</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <article class="pb-2 mt-3">

        <div class="container-fluid d-block pb-2">

            <div class="img-thumbnail text-center float-md-start me-md-3">
                <img class="rounded w-100 p-1" src="https://picsum.photos/500/350" alt="Desenvolvedores da Woop!Applications" />
                <p class="pt-2"><em>Equipe da <a href="https://github.com/YinYal" target="_blank">Woop! Applications</a>.</em></p>
            </div>

                <div class="fs-4 mt-3 mt-md-2">
                    <h2 class="text-center"><strong>A Woopy! Application</strong></h2>
                    <p class="pF mb-1">Desde 2021 a Woopy! Application vem se dedicando a levar aos seus clientes a melhor experiência em resultados de gestão empresarial, com ajuda da tecnologia e de suas soluções web.</p>
                    <p class="pF mb-1">Sendo uma empresa inovadora na área de tecnologia, construímos softwares e aplicativos para ajudar nossos clientes a acelerar seu crescimento digital e conseguimos isso através de profissionais qualificados e engajados em enfrentar as mudanças constantes deste mercado de trabralho, transformando a tecnologia em bons resultados.</p>
                    <p class="pF mb-1">Com soluções já consolidadas em softwares de gestão empresarial e outras aplicações web, a A Woopy! Application cumpre seus objetivos com todos os méritos nos mercados em que atua.</p>
                    <p class="pF mb-1">lorem ipsum</p>

                    <h2 class="text-center mb-2"><strong>Sobre o projeto</strong></h2>
                    <p class="pF mb-1">
                        Este é o nosso primeiro projeto, o <strong>Archiver Driver</strong>, um gerenciador de arquivos PDF.
            Uma aplicação criada no formato <strong>SPA e MVC</strong>, as nossas linhas de conexão com o banco de dados foram criadas em <strong>C#</strong> e o banco de dados foi criado em <strong>SQL server</strong>. Utilizamos a ferramenta <strong>bootstrap</strong>
                        para toda a estilização e responsividade do template base.
                    </p>
                </div>
            </div>
    </article>
</asp:Content>
