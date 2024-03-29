# Домашнее задание к занятию "7.5. Основы golang"

С `golang` в рамках курса, мы будем работать не много, поэтому можно использовать любой IDE.
Но рекомендуем ознакомиться с [GoLand](https://www.jetbrains.com/ru-ru/go/).

## Задача 1. Установите golang.
1. Воспользуйтесь инструкций с официального сайта: [https://golang.org/](https://golang.org/).
2. Так же для тестирования кода можно использовать песочницу: [https://play.golang.org/](https://play.golang.org/).

## Задача 2. Знакомство с gotour.
У Golang есть обучающая интерактивная консоль [https://tour.golang.org/](https://tour.golang.org/).
Рекомендуется изучить максимальное количество примеров. В консоли уже написан необходимый код,
осталось только с ним ознакомиться и поэкспериментировать как написано в инструкции в левой части экрана.

## Задача 3. Написание кода.
Цель этого задания закрепить знания о базовом синтаксисе языка. Можно использовать редактор кода
на своем компьютере, либо использовать песочницу: [https://play.golang.org/](https://play.golang.org/).

1. Напишите программу для перевода метров в футы (1 фут = 0.3048 метр). Можно запросить исходные данные
   у пользователя, а можно статически задать в коде.
   Для взаимодействия с пользователем можно использовать функцию `Scanf`:
    ```
    package main
    
    import "fmt"
    
    func main() {
        fmt.Print("Enter a number: ")
        var input float64
        fmt.Scanf("%f", &input)
    
        output := input * 2
    
        fmt.Println(output)    
    }
    ```
```
package main

import (
"fmt"
"math"
)

func main() {
fmt.Print("Введите значение: ")
var input float64
fmt.Scanf("%f", &input)

	output := input / 3.2808

	fmt.Println(Round(output, 4))
}
func Round(x float64, prec int) float64 {
var rounder float64
pow := math.Pow(10, float64(prec))
intermed := x * pow
_, frac := math.Modf(intermed)
if frac >= 0.5 {
rounder = math.Ceil(intermed)
} else {
rounder = math.Floor(intermed)
}

	return rounder / pow
}
```


1. Напишите программу, которая найдет наименьший элемент в любом заданном списке, например:

```
    package main

import (
"fmt"
)

func main() {
arr := []int{48, 96, 86, 68, 57, 82, 63, 70, 37, 34, 83, 27, 19, 97, 9, 17}

	min := arr[0]
	for _, element := range arr {
		if element < min {
			min = element
		}
	}
	
	fmt.Println(min)
}

```
   

1. Напишите программу, которая выводит числа от 1 до 100, которые делятся на 3. То есть `(3, 6, 9, …)`.
```
package main

import "fmt"

func main() {

	for i := 1; i <= 100; i++ {
		if ((i - 1) % 10) == 0 {
		}
		if (i % 3) == 0 {
			fmt.Print(i, ", ")
		}
	}
}
```
## Задача 4. Протестировать код (не обязательно).

Создайте тесты для функций из предыдущего задания.

---

### Как cдавать задание

Выполненное домашнее задание пришлите ссылкой на .md-файл в вашем репозитории.
