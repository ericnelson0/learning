figure_num = 1;
learn_rate = 0.01;
momentum = 0.1;
min_val = 0;

do
	for w = [3]
		printf('Trying with momentum = %f\n', momentum);
		#figure(figure_num);
		#fplot('x**4 - 15.05*x**3 + 76.65*x**2 - 158.5*x + 114.8', [0, 10]);
		#hold on
	
		delta_w = 0;
		prev_delta_w = delta_w;
		prev_w = w;
		iters = 0;
		do
			prev_delta_w = delta_w;
			prev_w = w;
			delta_w = -learn_rate * (4 *(w**3) - 45.15 *(w**2) + 153.3 * w - 158.5);
			w = w + delta_w + momentum * prev_delta_w;
			#plot(w, w**4 - 15.05*w**3 + 76.65*w**2 - 158.5*w + 114.8, 'r*')
			iters++;
		until (abs(prev_w - w) < 0.001)
		figure_num++;
		min_val = w;
		printf('Minima found in %d iterations at w=%f\n', iters, w);
	endfor
	momentum += 0.1;
until(abs(min_val - 6.0) < 0.3)

keyboard();
