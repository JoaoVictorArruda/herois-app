const CANCELLED_BY_USER = 1;
const SERVER_ERROR = 2;
const EMAIL_ALREADY_IN_USE = 3;
const INVALID_EMAIL_AND_PASSWORD_COMBINATION = 4;
const CANNOT_BE_EMPTY = 5;
const EXCEEDING_LENGTH = 6;
const INSUFFICIENT_PERMISSIONS = 7;
const UNABLE_TO_UPDATE = 8;
const UNEXPECTED = 9;
const UNAVAILABLE_TO_DONATE = 10;

const messages = {
  1 : 'Cancelado',
  2 : 'Erro no servidor da aplicação',
  3 : 'Email já está em uso',
  4 : 'Email ou senha inválidos',
  5 : 'Não pode estar vazio',
  6 : 'Muitos caracteres, máximo: ',
  7 : 'Permissão insuficiente ❌',
  8 : 'Não foi possivel atualizar. Foi deletado por outro dispositivo?',
  9 : 'Erro inesperado, contatar o suporte.',
  10 : 'Indisponivel para doar',
};