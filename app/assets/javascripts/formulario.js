function editar(){
    $('#btn-salvar2').attr('hidden', false)
    $('#formulario').attr('disabled', false)
    $('#btn-editar').attr('hidden', true)
    $('#btn-cancelar').attr('hidden', false)
}
function cancelar(){
    $('#formulario').attr('disabled', true)
    $('#btn-salvar2').attr('hidden', true)
    $('#btn-editar').attr('hidden', false)
    $('#btn-cancelar').attr('hidden', true)
}
function salvar(){
    $('#botao-salvar').click()
}