function logout() {
    let text = "Deseja realmente sair?";
    if (confirm(text) == true) {
        window.location.href = "logout.aspx";
    }
}
