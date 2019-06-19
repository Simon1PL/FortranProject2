# Szymon Zieliński
## Fortran projekt 2

### Opis projektu::
Program wykonuje dwa zadania:  
**1.** Zadanie 1 polega na obserwacji tranformaty Fouriera sygnału powstałego z sumy sygnałów  
**2.** Zadanie 2 polega na pozbyciu sie niewielkich zaklóceń z sygnału  

#### Pliki:
Program zawiera plik Makefile kompilujący i uruchamiający zadanie 1 oraz 2
1.W katalogu src: 
* **zad1.F90** kod zadania 1
* **zad2.F90** kod zadania 2
* **fftw3.f03** kod do biblioteki fftw   

2.W katalogu res:  
* **zad1.p** kod gnuplot tworzący wykresy do zadania 1:  
- **signal.pdf** wykres sygnału z zad 1  
- **transformata.pdf** wykres transformaty sygnału z zad 1  
* **zad2.p** kod gnuplot tworzący wykresy do zadania 2:  
- **cosinus.pdf** wykres sygnału poczatkowego  
- **transformataCosinus.pdf** wykres jego transformaty  
- **cosinusRandom.pdf** wykres sygnału z zakłuceniami  
- **transformataCosinusRandom.pdf** wykres transformaty sygnalu z zakluceniami  
- **afterAll.pdf** wykres sygnalu zakluconego po usunieciu szumów  
* **inne** pliki z pamiarami do utworzenia wykresów  

### Wnioski:
#### Zadanie 1  
Wykres sygnału początkowego:  
![1](https://user-images.githubusercontent.com/44688394/59806193-d9c84600-92f3-11e9-9adc-d4a8d8042ab9.png)
Wykres jego transformaty:  
![2](https://user-images.githubusercontent.com/44688394/59806229-f95f6e80-92f3-11e9-922a-f3a6ffe5b4aa.png)
Można zaobserwować, że górki na wykresie odpowiadają częstotliwości sygnałow użytych jako składowe sygnału.
#### Zadanie 2
Sygnał początkowy:  
![3](https://user-images.githubusercontent.com/44688394/59806243-03816d00-92f4-11e9-91c7-cfa00df5a968.png)
jego transformata:  
![5](https://user-images.githubusercontent.com/44688394/59806260-13994c80-92f4-11e9-9719-120a28fceac0.png)
Zakłócamy sygnał przez dodanie losowej wartosci między 0 a 1 w kazdym punkcie  
zakłócony sygnał:  
![4](https://user-images.githubusercontent.com/44688394/59806250-0bd9a800-92f4-11e9-8b7e-33afcafb4c81.png)
jego transformata:  
![6](https://user-images.githubusercontent.com/44688394/59806269-1c8a1e00-92f4-11e9-99a0-5f8bfecc75d8.png)
Jeśli wartość transformaty jest mniejsza od 50 niwelujemy ją  
Robimy odwrotną transformatę  
Sygnał powstały po tych czynnościach:  
![7](https://user-images.githubusercontent.com/44688394/59806283-23189580-92f4-11e9-9d28-9db716c0f8ac.png)
Zauważmy, że za pomocą transformaty Fouriera możemy pozbywać się niewielkich zakłóceń z sygnałów.
