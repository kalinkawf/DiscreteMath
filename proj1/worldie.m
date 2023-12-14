N_PERMUTACJI = 40;

disp("Witam pierwszego użytkownika");
word = input('Proszę wprowadzić słowo: ', "s");

% permutacja podanego slowa
word_length = length(word);
permut_array = 1:word_length;
permut = permutacje(word_length, N_PERMUTACJI, permut_array);
disp(permut);
new_word = word(permut);

% narysowanie nowego słowa
x = 0.3;
y = 0.4;
new_word_print = sprintf(new_word);
annotation('textbox', [x, y, 0.2, 0.2], 'String', new_word_print, ...
    'FitBoxToText', 'on', 'Color', 'blue', 'EdgeColor', 'none', 'FontSize', 30);

% gra w zgadywanie
disp("Zapraszam drugiego użytkownika do ułożenia słowa z liter napisanych na niebiesko");
guess = char(zeros(word_length));
while strcmp(guess, word) == 0
    guess = input('Wpisz słowo \nJesli chcesz podpowiedz, wpisz pomocy \n', "s");
    if guess == "pomocy"
        break
    end

    if length(guess) ~= word_length
        guess = char(zeros(word_length));
        disp("Zła liczba znaków");
    end
end

if guess == "pomocy"
    % tworzenie słowa pomocniczego
    permut_array = 1:word_length-2;
    permut = permutacje(word_length-2, N_PERMUTACJI, permut_array);
    modified_word = word(3:end);
    new_new_word = strcat(word(1:2), modified_word(permut));
    annotation('textbox', [x, y-0.1, 0.2, 0.2], 'String', new_new_word(1:2), ...
        'FitBoxToText', 'on', 'Color', 'red', 'EdgeColor', 'none', 'FontSize', 30);
    annotation('textbox', [x+0.1, y-0.1, 0.2, 0.2], 'String', new_new_word(3:end), ...
        'FitBoxToText', 'on', 'Color', 'blue', 'EdgeColor', 'none', 'FontSize', 30);
    disp("Dodałem nowe znaki, pierwsze dwie literki są na swoim miejscu");

    guess = char(zeros(word_length));
    while strcmp(guess, word) == 0
        guess = input('Wpisz slowo \nTeraz dwie pierwsze literki są na swoim miejscu \n', "s");
        if length(guess) ~= word_length
            guess = char(zeros(word_length));
            disp("Zła liczba znaków");
        end
    end
end

annotation('textbox', [x, y-0.2, 0.2, 0.2], 'String', 'Zgadłes!', ...
    'FitBoxToText', 'on', 'Color', 'red', 'EdgeColor', 'none', 'FontSize', 30);
