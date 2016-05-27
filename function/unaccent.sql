-- Function: unnacent(character varying)

-- DROP FUNCTION unnacent(character varying);

CREATE OR REPLACE FUNCTION unnacent(texto character varying)
  RETURNS character varying AS
$BODY$
SELECT translate( $1,'ÁÉÍÓÚÀÈÌÒÙÃÕÂÊÎÔÛÄËÏÖÜÇÑáéíóúàèìòùãõâêîôûäëïöüçñ','AEIOUAEIOUAOAEIOUAEIOUCNaeiouaeiouaoaeiouaeioucn')
$BODY$
  LANGUAGE sql IMMUTABLE
  ;
