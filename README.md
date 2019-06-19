# Szymon Zieliński
## Fortran projekt 2

### Opis projektu::
Program wykonuje dwa zadania:  
1.Zadanie 1 polega na obserwacji tranformaty Fouriera sygnału powstałego z sumy sygnałów  
2.Zadanie 2 polega na pozbyciu sie niewielkich zaklóceń z sygnału  

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
Wykresy:  
![signal.pdf](https://github.com/Simon1PL/FortranProject2/files/3308093/signal.pdf)
![transformata.pdf](https://github.com/Simon1PL/FortranProject2/files/3308094/transformata.pdf)
![cosinus.pdf](https://github.com/Simon1PL/FortranProject2/files/3308098/cosinus.pdf)
