function! SayHello()
	echo 'Hello, World!'
endfunction

command! Hello call SayHello()

nnoremap Q :Hello<CR>
