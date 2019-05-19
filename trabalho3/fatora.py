user_input = int(input('Digite o numero: ')) 

if (user_input > 32767):
  print('Entrada invalida.')
  # sysout

elif (user_input <= 0):
  print('Entrada invalida.')
  # sysout


copy_input = user_input

aux = 2

while(aux < user_input):
  
  if(copy_input % aux == 0):
    print(aux)
    copy_input = copy_input / aux
  
  else:
    aux = aux + 1


if(copy_input == user_input):
  print(user_input)