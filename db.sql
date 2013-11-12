users:
int PK id
varchar email
varchar password
varchar name
int FK info

info:
int PK id
varchar name
varchar street
int(5) psc
varchar city
int ico
varchar dic
varchar registrace
varchar ucet (nebo int?) -- zjistit, jestli musi byt na fakture banka vypsana i slovne
int tel
int fax null
varchar internet null -- WTF?

templates:
PK id
FK user_id
// odberatel || prijemce
varchar name
varchar street
int(5) psc
varchar city
int ico null
varchar dic null
varchar konst_symbol
varchar cislo_obj
