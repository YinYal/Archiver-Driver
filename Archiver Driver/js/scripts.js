function logout() {
    let text = "Deseja realmente sair?";
    if (confirm(text) == true) {
        window.location.href = "logout.aspx";
    }
}


(() => {
  if (!localStorage.pureJavaScriptCookies) {
    document.querySelector(".box-cookies").classList.remove('d-none');
  }
  
  const acceptCookies = () => {
    document.querySelector(".box-cookies").classList.add('d-none');
    localStorage.setItem("pureJavaScriptCookies", "accept");
  };
  
  const btnCookies = document.querySelector(".btn-cookies");
  
  btnCookies.addEventListener('click', acceptCookies);
})();