const CANCELLED_BY_USER = 1;
const SERVER_ERROR = 2;
const CANNOT_BE_EMPTY = 3;
const EXCEEDING_LENGTH = 4;
const INSUFFICIENT_PERMISSIONS = 5;
const UNABLE_TO_UPDATE = 6;
const UNEXPECTED = 7;
const UNAVAILABLE_TO_DONATE = 8;

const messages = {
  CANCELLED_BY_USER : 'Cancelado',
  SERVER_ERROR : 'Erro no servidor da aplicação',
  CANNOT_BE_EMPTY : 'Campo obrigatório',
  EXCEEDING_LENGTH : 'Muitos caracteres, máximo: ',
  INSUFFICIENT_PERMISSIONS : 'Permissão insuficiente ❌',
  UNABLE_TO_UPDATE : 'Não foi possível atualizar. Foi deletado por outro dispositivo?',
  UNEXPECTED : 'Erro inesperado.',
  UNAVAILABLE_TO_DONATE : 'Você doou recentemente e não está apto para doar temporariamente',
};