function [] = hubbard( bin )
psi_in.bin = bin;

% t
psi_in.sign = -1;

psi_out = psi_in;
psi_out = annih(2, 1, psi_out);
psi_out = create(1, 1, psi_out);
print(psi_out, 't');

psi_out = psi_in;
psi_out = annih(1, 1, psi_out);
psi_out = create(2, 1, psi_out);
print(psi_out, 't');

psi_out = psi_in;
psi_out = annih(2, -1, psi_out);
psi_out = create(1, -1, psi_out);
print(psi_out, 't');

psi_out = psi_in;
psi_out = annih(1, -1, psi_out);
psi_out = create(2, -1, psi_out);
print(psi_out, 't');

% U
psi_in.sign = 1;

psi_out = psi_in;
psi_out = annih(1, 1, psi_out);
psi_out = create(1, 1, psi_out);
psi_out = annih(1, -1, psi_out);
psi_out = create(1, -1, psi_out);
print(psi_out, 'U');

psi_out = psi_in;
psi_out = annih(2, 1, psi_out);
psi_out = create(2, 1, psi_out);
psi_out = annih(2, -1, psi_out);
psi_out = create(2, -1, psi_out);
print(psi_out, 'U');

end