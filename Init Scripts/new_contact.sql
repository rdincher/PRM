INSERT INTO location (state, state_short, city) VALUES ('state', 'st', 'city');
INSERT INTO company (name) VALUES ('company name');
Insert into people (first_name, last_name, company, past_companies, notes, location) 
VALUES ('first', 'last', (SELECT company.id from company where company.name == 'company name'), '', '', 
(SELECT location.id from location WHERE location.state == 'state' and location.city == 'city'));