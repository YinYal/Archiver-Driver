<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Archiver_Driver.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Sobre - Archiver Driver</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid d-block d-sm-flex justify-content-sm-around mt-3">

        <aside class="col-12 col-sm-4">
            <div class="text-end fs-5">
                <h2 class="text-center">Sobre nós</h2>
                <p class="mb-1">
                    Nós somos a Woopy! Applications, uma empresa nascida no senac com o intuito de desenvolver ferramentas para a facilitação de nossos usuários.
            Visamos criar feramentas que sejam intuitivas e de fácil manipulação para que usuários de todas as idades consigam mexer em nossas aplicações sem quaisquer problemas.
                </p>

                <p class="mb-1">
                    Sendo uma empresa inovadora na área de tecnologia, construímos softwares e aplicativos para ajudar nossos clientes a acelerar seu crescimento digital e conseguimos isso através de profissionais qualificados e engajados em enfrentar as mudanças constantes deste mercado de trabralho, transformando a tecnologia em bons resultados.
                </p>

                <h3 class="text-center mt-2 mb-2">Nosso projeto</h3>
                <p class="mb-1">
                    Este é o nosso primeiro projeto, o <strong>Archiver Driver</strong>, um gerenciador de arquivos PDF.
            Uma aplicação criada no formato <strong>SPA e MVC</strong>, as nossas linhas de conexão com o banco de dados foram criadas em <strong>C#</strong> e o banco de dados foi criado em <strong>SQL server</strong>. Utilizamos a ferramenta <strong>bootstrap</strong>
                para toda a estilização e responsividade do template base.
            <p />
            </div>
        </aside>

        <article class="col-12 col-sm-5">
            <div class="img-thumbnail text-center pt-2 pe-2 ps-2 bg-light">
                <img src="https://picsum.photos/500/300" class="rounded mx-auto d-block w-100" alt="Equipe de desenvolvedores da Woopy! Application." />
                <p class="mt-2 mb-2">Equipe de desenvolvedores da <a href="#">Woopy! Application</a>.</p>
            </div>

            <figure class="mt-5">
                <blockquote class="blockquote">
                    <p>"Se não puder voar, corra. Se não puder correr, ande. Se não puder andar, rasteje, mas continue em frente de qualquer jeito."</p>
                </blockquote>
                <figcaption class="blockquote-footer"><cite title="Source Title">Martin Luther King JR.</cite>
                </figcaption>
            </figure>

            <figure class="mt-5">
                <blockquote class="blockquote">
                    <p>"Nossa maior fraqueza está em desistir. O caminho mais certo de vencer é tentar mais uma vez."</p>
                </blockquote>
                <figcaption class="blockquote-footer"><cite title="Source Title">Thomas Edison.</cite>
                </figcaption>
            </figure>
        </article>
    </div>
</asp:Content>

