augroup formatPrismaFilesOnSave
  autocmd!
  autocmd BufWritePre *.prisma execute 'Format'
augroup END

