function validaCampos(){
    if(document.Clientes.email.value==="" || document.Clientes.email.value.indexOf('@')===-1 || document.Clientes.email.value.indexOf('.')===-1){
        alert("Preencha com um email válido");
        document.Clientes.email.focus();
        return false;
        
        
    }
    
    
    
}

