figure_num = 1;
learn_rate = 0.01;

for w = [1, 3, 4, 7]
	figure(figure_num);
	fplot('x**4 - 15.05*x**3 + 76.65*x**2 - 158.5*x + 114.8', [0, 10]);
	hold on
	prev_w = w;
	iters = 0;
	do
		prev_w = w;
		w = w - learn_rate * (4 *(w**3) - 45.15 *(w**2) + 153.3 * w - 158.5)
		plot(w, w**4 - 15.05*w**3 + 76.65*w**2 - 158.5*w + 114.8, 'r*')
		iters++;
	until (abs(prev_w - w) < 0.001)
	figure_num++;
	printf('Minima found in %d iterations at w=%f\n', iters, w);
endfor

keyboard();
