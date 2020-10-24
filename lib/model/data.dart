import 'package:flutter/material.dart';

class Questions {
  final category;
  final String question;
  final List<Map> choices;
  final String imagePath;
  final String videoPath;
  final String toolTip;
  final int id;

  Questions({
    @required this.category,
    @required this.question,
    @required this.choices,
    this.imagePath,
    this.videoPath,
    this.toolTip,
    this.id,
  });
}

class QuestionData {
  final _data = [
    Questions(
      category: 'sign',
      question: 'Что означает этот знак ',
      choices: [
        {'choice': 'Начало одностороннего движения'},
        {'choice': 'Начало Двухстороннего движения', 'isCorrect': 1},
        {'choice': 'Разделение highway впереди'},
        {'choice': 'Обьединения трафика впереди'},
      ],
      imagePath: 'images/2WayRoad.jpg',
    ),
    Questions(
      category: 'sign',
      question: 'Форма этого знака заблоговременно предупреждает о том что  ',
      choices: [
        {'choice': 'Двух сторонее движение впереди'},
        {'choice': 'Впереди запрещен обгон', 'isCorrect': 1},
        {'choice': 'Обьединения трафика впереди'},
        {'choice': 'Впереди отсутствуют линии трафика'},
      ],
      imagePath: 'images/nopasszone.jpg',
    ),
    Questions(
      category: 'sign',
      question: 'Этот знак предупреждает вас ',
      choices: [
        {'choice': 'Увеличить дистанцию до 6 секунд'},
        {'choice': 'Двигатся по обочине на пониженой скорости'},
        {'choice': 'Двигатся по обочине с высокой скоростью'},
        {'choice': 'Не сьезжать на обочину или с тратуара ', 'isCorrect': 1},
      ],
      imagePath: 'images/softshoulder.jpg',
    ),
    Questions(
      category: 'sign',
      question: 'Что означает этот знак',
      choices: [
        {'choice': 'Госпиталь'},
        {'choice': 'Железнодорожное пересечение'},
        {'choice': 'Пересечение дорог', 'isCorrect': 1},
        {'choice': 'Пешеходный перекресток'},
      ],
      imagePath: 'images/crossroads.jpg',
    ),
    Questions(
      category: 'sign',
      question: 'Что означает этот знак',
      choices: [
        {'choice': 'Транспорт экстренной службы впереди'},
        {'choice': 'Впереди рабочая команда'},
        {'choice': 'Впереди школьная зона'},
        {'choice': 'Впереди флагмэн', 'isCorrect': 1},
      ],
      imagePath: 'images/flagman.jpg',
    ),
    Questions(
      category: 'sign',
      question: 'Этот знак предупреждает водителей ',
      choices: [
        {'choice': 'Держатся правее, впереди разделитель', 'isCorrect': 1},
        {'choice': 'Держатся левее на одностороней дороге'},
        {'choice': 'Держатся левее на обьезде'},
        {'choice': 'Вьезд на одностороний мост'},
      ],
      imagePath: 'images/devider.jpg',
    ),
    Questions(
      category: 'sign',
      question: 'Что означает этот знак',
      choices: [
        {'choice': 'Линия ведущая к платной дороге'},
        {'choice': 'Линия зарезервирована для правого поворота'},
        {
          'choice':
              'Линия зарезервирована для определеных случаев и определеных ватомобилей',
          'isCorrect': 1
        },
        {
          'choice':
              'Линия может использоватся автомобилями в обе стороны для поворота на лево'
        },
      ],
      imagePath: 'images/restriction.jpg',
    ),
    Questions(
      category: 'sign',
      question: 'Когда видиш этот знак ты должен',
      choices: [
        {'choice': 'Повернуть на лево затем на право'},
        {'choice': 'Зделать резкий поворот'},
        {
          'choice': 'Снизить скорость, впереди скользкая дорога',
          'isCorrect': 1
        },
        {'choice': 'Увеличить скорость'},
      ],
      imagePath: 'images/slippery.jpg',
    ),
    Questions(
      category: 'sign',
      question: 'Этот знак означает',
      choices: [
        {'choice': 'Впереди поворот на право'},
        {'choice': 'Впереди двойной изгиб дороги', 'isCorrect': 1},
        {'choice': 'Извилистая дорога впереди'},
        {'choice': 'Впереди изгиб дороги в право'},
      ],
      imagePath: 'images/curve.jpg',
    ),
    Questions(
      category: 'sign',
      question:
          'Когда видите этот знак на автомагестрали с ограниченым доступом вы должны',
      choices: [
        {
          'choice':
              'Двигатся со скоростью выше 30mph когда сьездаете с автомагестрали'
        },
        {'choice': 'Двигатся еще 30 миль до следующего сьезда'},
        {
          'choice':
              'Увеличить скорость до 30mph и обогнать впереди идущий автомобиль'
        },
        {
          'choice': 'Не привышать 30mph когда сьезжаеш с автомагистрали',
          'isCorrect': 1
        },
      ],
      imagePath: 'images/limitaccess.jpg',
    ),
    Questions(
      category: 'sign',
      question: 'Этот знак говорит водителю ',
      choices: [
        {'choice': 'Поворот на право запрещен'},
        {
          'choice':
              'Поворот на лево или на право запрещен пока горит красный цвет'
        },
        {'choice': 'Ожидать пока на светофоре не загорится зеленый свет'},
        {'choice': 'Все  выше перечисленные варианты верны', 'isCorrect': 1},
      ],
      imagePath: 'images/no-turn-on-red.jpg',
    ),
    Questions(
      id: 1,
      category: 'text',
      question:
          'Водитель не может пересекать _____ пока это не безопасно при повороте на лево',
      choices: [
        {'choice': 'Двойную сплошную желтую линию', 'isCorrect': 1},
        {'choice': 'Красную линию'},
        {'choice': 'Прерывистую желтую линию'},
        {'choice': 'Белую двойную сплошную линию'},
      ],
      imagePath: '',
    ),
    Questions(
      id: 2,
      category: 'text',
      question:
          'При приближении к перекрестку или проезжей части водитель должн:',
      choices: [
        {'choice': 'Сменить линию(Перестроится)'},
        {'choice': 'Обогнать другие автомобили и после остановится'},
        {'choice': 'Ехать с превышением перед тем как вьезжать на перекресток'},
        {
          'choice': 'Посмотреть в обе стороны и быть готовым остановится',
          'isCorrect': 1
        },
      ],
      imagePath: '',
    ),
    Questions(
      id: 3,
      category: 'text',
      question: 'Когда совершаете обгон грузового транспорта , желательно',
      choices: [
        {'choice': 'Снизить скорость при спуске с горы'},
        {'choice': 'Обогнать с правой стороны'},
        {'choice': 'Обогнать и встать перед кабиной грузового транспорта'},
        {
          'choice':
              'Помегать фарами , дать знать тракисту что вы совершаете обгон',
          'isCorrect': 1
        },
      ],
      imagePath: '',
    ),
    Questions(
      category: 'text',
      question:
          'Водитель управляющий транспортом в нетрезвом состоянии рискует получить',
      choices: [
        {'choice': 'Высокая страховка , приговор к тюрьме'},
        {'choice': 'Потеря прав, большой штраф'},
        {'choice': 'Серьезные повреждения или смерть'},
        {'choice': 'Все выше перечисленные категории', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: 'text',
      question:
          'На скорости 40mph, время реакции водителя состовляет ____ фута(ов) пути',
      choices: [
        {'choice': '111'},
        {'choice': '88'},
        {'choice': '44', 'isCorrect': 1},
        {'choice': '22'},
      ],
      imagePath: '',
    ),
    Questions(
      category: 'text',
      question: 'Светофор для сьезда на автомагистраль',
      choices: [
        {
          'choice':
              'Контролируют скорость автомобиля сьезжающего на автомагистраль'
        },
        {'choice': 'не считаются устройствами управления дорожным движением'},
        {'choice': 'Контролируют вес грузового транспорта '},
        {
          'choice':
              'Контролируют количество автомобилей вьезжающих на автомагистраль',
          'isCorrect': 1
        },
      ],
      imagePath: '',
    ),
    Questions(
      category: 'sign',
      question: 'Что означает этот знак:',
      choices: [
        {'choice': 'Кривая дорога на право'},
        {'choice': 'Уменьшение дорожных линий'},
        {'choice': 'Впереди слияния дороги'},
        {'choice': 'Знак боковой дороги', 'isCorrect': 1},
      ],
      imagePath: 'images/FRW403.jpg',
    ),
    Questions(
      category: 'text',
      question:
          'Что из перечисленного НЕ является советом по безопасному вождению',
      choices: [
        {'choice': 'Лучше съехать с дороги, чем соскользнуть, избегая аварии'},
        {
          'choice':
              'Лучше ударить машину, двигающуюся в том же направлении, что и вы, чем лобовой удар'
        },
        {'choice': 'Лучше ударить столб, чем куст', 'isCorrect': 1},
        {
          'choice':
              'Лучше повернуть направо, а не навстречу полосе движения, чтобы предотвратить аварию.'
        },
      ],
      imagePath: '',
    ),
    Questions(
      category: 'sign',
      question: 'Этот знак предупреждает водителей о том, что',
      choices: [
        {
          'choice':
              'Впереди шоссе разделено на две дороги с односторонним движением. Водители должны держаться правее'
        },
        {'choice': 'На дороге низкое место'},
        {'choice': 'Впереди извилистая дорога'},
        {'choice': 'Впереди двойная кривая', 'isCorrect': 1},
      ],
      imagePath: 'images/curve.jpg',
    ),
    Questions(
      category: 'text',
      question:
          'Вы подьезжаете к железнодорожному переезду, на котором нет ворот и фонарей. Приближается поезд, но у вас может быть как раз достаточно времени, чтобы проехать рельсы до его прибытия. Вам следует',
      choices: [
        {
          'choice':
              'Снизьте скорость, остановится на перекрестке и дождитесь, когда поезд перейдет впереди вас.',
          'isCorrect': 1
        },
        {
          'choice':
              'Разогнатся и привысить скоростной режим,чтобы у вас было больше места, чтобы пересечь рельсы до прибытия поезда. '
        },
        {
          'choice':
              'Продолжайте движение на предельной скорости и посмотрите, сможете ли вы пересечь рельсы впереди поезда.'
        },
        {'choice': 'Развернутся и найти другой путь обьезда', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: 'text',
      question:
          'Когда вы едете по многополосной дороге, если другой автомобиль выезжает на вашу полосу прямо перед вами, подрезая вас, вы должны',
      choices: [
        {
          'choice':
              'Тормозите только в случае необходимости, чтобы избежать столкновения, и некоторое время внимательно следите за другим автомобилем.'
        },
        {
          'choice':
              'Посигналить и резко затормозить чтобы быстро сократить дистанцию '
        },
        {
          'choice':
              'Успокойся. При необходимости снизьте скорость, чтобы избежать столкновения, и осторожно вернитесь на безопасное расстояние.',
          'isCorrect': 1
        },
        {'choice': 'Не обращать внимания и двигатся дальше'},
      ],
      imagePath: '',
    ),
    Questions(
      category: 'text',
      question:
          'Если вы хотите пойти на общественное мероприятие, где вы можете выпить алкоголь, вам следует',
      choices: [
        {
          'choice':
              'Расплонировать поездку домой по закоулкам и дорогам без движения , если употребляли алкоголь на мероприятии'
        },
        {
          'choice':
              'Воспользоватся общественным транспортом или такси если возможно, или договорится с двумя или более персонами что один из них не будет употреблять алкоголь',
          'isCorrect': 1
        },
        {'choice': 'Один из выше перечисленных вариантов'},
        {
          'choice':
              'Спокойно ехать на автомобиле домой после употребления алкоголя'
        },
      ],
      imagePath: '',
    ),
    Questions(
      category: 'text',
      question:
          'Вы едете по скользкой дороге в автомобиле с антиблокировочной системой тормозов (ABS). Если вам нужно сделать аварийную остановку, вы должны',
      choices: [
        {
          'choice':
              'Сильно нажмите на педаль тормоза, а затем отпустите ее, поворачивая к обочине.'
        },
        {
          'choice':
              'Резко нажать на тормоза и попытатся выравнить автомобиль если его занесло'
        },
        {
          'choice':
              'Сильно нажмите на педаль тормоза, удерживайте ее и держитесь подальше от опасности.',
          'isCorrect': 1
        },
        {
          'choice':
              'Хаотично нажимать на пидаль тормоза чтоб предотвратить занос'
        },
      ],
      imagePath: '',
    ),
    Questions(
      category: 'text',
      question:
          'Два автомобиля приближаются к нерегулируемому Т-образному перекрестку. Кто из них имеет преимущество проезда?',
      choices: [
        {'choice': 'Автомобиль справа (1) всегда имеет преимущество проезда'},
        {'choice': 'Автомобиль, который первым подъедет к перекрестку'},
        {'choice': 'Автомобиль, перевозящий более двух пассажиров'},
        {
          'choice': 'Автомобиль, движущийся по сквозной дороге (2)',
          'isCorrect': 1
        },
      ],
      imagePath: 'images/TDrive.jpg',
    ),
    Questions(
      category: 'text',
      question: 'Приближаясь к перекрестку со знаком "STOP", нужно:',
      choices: [
        {'choice': 'Снизить скорость и двигаться с осторожностью'},
        {
          'choice':
              'Остановиться только в случае, когда другая машина пересекает перекресток'
        },
        {
          'choice':
              'Полностью остановиться и продолжить движение при отсутствии помех',
          'isCorrect': 1
        },
        {'choice': 'Уступить право проезда всему транспорту на перекрестке'},
      ],
      imagePath: '',
    ),
    Questions(
      category: 'text',
      question: 'Мигающий красный сигнал светофора означает:',
      choices: [
        {'choice': 'То же, что и знак "Въезд запрещен" (Do Not Enter)'},
        {'choice': 'То же, что и знак "Yield"'},
        {'choice': 'То же, что и знак "STOP"', 'isCorrect': 1},
        {'choice': 'То же, что и знак "Wrong Way"'},
      ],
      imagePath: '',
    ),
    Questions(
      category: 'text',
      question: 'Как выглядит знак дорожных работ?',
      choices: [
        {'choice': 'Белый прямоугольник с черными символами'},
        {'choice': 'Оранжевый ромб с черными символами', 'isCorrect': 1},
        {'choice': 'Зеленый прямоугольник с белыми символами'},
        {'choice': 'Желтый круг с черными символами'},
      ],
      imagePath: '',
    ),
    Questions(
      category: 'text',
      question: 'Что из перечисленного могут использовать велосипедисты?',
      choices: [
        {'choice': 'Велодорожку'},
        {'choice': 'Обочину'},
        {'choice': 'Проезжую часть'},
        {'choice': 'Все эти варианты', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: 'text',
      question: 'Какие цвета у знака "STOP"?',
      choices: [
        {'choice': 'Белый текст на красном фоне', 'isCorrect': 1},
        {'choice': 'Черный текст на желтом фоне'},
        {'choice': 'Красный текст на белом фоне'},
        {'choice': 'Белый текст на зеленом фоне'},
      ],
      imagePath: '',
    ),
    Questions(
      category: 'text',
      question: 'Если светофор не работает, водители должны:',
      choices: [
        {
          'choice':
              'Двигаться так, как будто для всех направлений горит жетый сигнал'
        },
        {
          'choice':
              'Двигаться так, как будто для всех направлений горит зеленый сигнал'
        },
        {'choice': 'Остановиться, если это возможно'},
        {
          'choice':
              'Двигаться так, как будто для всех направлений установлен знак "STOP"',
          'isCorrect': 1
        },
      ],
      imagePath: '',
    ),
    Questions(
      category: 'text',
      question:
          'Если перед пешеходным переходом установлен знак "STOP", нужно остановиться:',
      choices: [
        {'choice': 'Перед пешеходным переходом', 'isCorrect': 1},
        {'choice': 'За пешеходным переходом'},
        {'choice': 'На переходе'},
        {'choice': 'Только, если на переходе есть пешеход'},
      ],
      imagePath: '',
    ),
    Questions(
      category: 'text',
      question: 'Что имеет большее преимущество?',
      choices: [
        {'choice': 'Знак "STOP"'},
        {'choice': 'Непрерывно горящий красный сигнал светофора'},
        {'choice': 'Мигающий красный сигнал'},
        {'choice': 'Указания регулировщика', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: 'sign',
      question: 'Белые знаки в форме вертикального прямоугольника означают:',
      choices: [
        {'choice': 'Что впереди школьная зона'},
        {
          'choice': 'Вы должны следовать правилам, указанным на знаке',
          'isCorrect': 1
        },
        {'choice': 'Расположение и расстояние до населенных пунктов'},
        {'choice': 'Потенциальные опасности на дороге'},
      ],
      imagePath: 'images/whiteSign.jpg',
    ),
    Questions(
      category: 'text',
      question: 'Желтые знаки в форме ромба указывают на:',
      choices: [
        {'choice': 'Необходимость остановиться'},
        {'choice': 'Расстояния до населенных пунктов'},
        {'choice': 'Возможные опасности на дороге', 'isCorrect': 1},
        {'choice': 'Ограничение скорости'},
      ],
      imagePath: '',
    ),
    Questions(
      category: 'sign',
      question: 'Что следует сделать перед знаком "Yield"?',
      choices: [
        {
          'choice':
              'Сбавить скорость и приготовиться остановиться, если потребуется',
          'isCorrect': 1
        },
        {'choice': 'Уступить автомобилям экстренных служб'},
        {'choice': 'Полностью остановиться'},
        {
          'choice':
              'Продолжать движение, следя за обстановкой по обеим сторонам'
        },
      ],
      imagePath: 'images/Yield.jpg',
    ),
    Questions(
      category: 'sign',
      question: 'Какую из указанных форм имеет знак остановки?',
      choices: [
        {'choice': '№ 1'},
        {'choice': '№ 2'},
        {'choice': '№ 3', 'isCorrect': 1},
        {'choice': '№ 4'},
      ],
      imagePath: 'images/stopSign.jpg',
    ),
    Questions(
      category: 'sign',
      question:
          'Какая из указанных форм относится к знакам, регулирующим скорость?',
      choices: [
        {'choice': '№ 1 , № 2'},
        {'choice': '№ 3'},
        {'choice': '№ 4', 'isCorrect': 1},
        {'choice': '№ 5'},
      ],
      imagePath: 'images/speedReg.jpg',
    ),
    Questions(
      category: 'text',
      question:
          'Какие цвета у навигационных знаков?\n Знаки навигации указывают местоположение населенных пунктов и расстояние до них.',
      choices: [
        {'choice': 'Желтый фон с черными символами и буквами'},
        {'choice': 'Зеленый фон с белыми символами и буквами', 'isCorrect': 1},
        {'choice': 'Белый фон с черными символами и буквами'},
        {'choice': 'Белый фон с красными символами и буквами'},
      ],
      imagePath: '',
    ),
    Questions(
      category: 'text',
      question:
          'При движении во время тумана или при плохой видимости, вы должны использовать:',
      choices: [
        {'choice': 'Только габаритные огни'},
        {'choice': 'Фары ближнего света', 'isCorrect': 1},
        {'choice': 'Фары дальнего света'},
        {'choice': 'Аварийные сигналы'},
      ],
      imagePath: '',
    ),
    Questions(
      category: 'text',
      question: 'В каком из перечисленных вариантов не нужно останавливаться?',
      choices: [
        {'choice': 'На мигающий красный сигнал светофора'},
        {'choice': 'На мигающий желтый сигнал светофора', 'isCorrect': 1},
        {'choice': 'У знака "STOP"'},
        {'choice': 'На красный сигнал светофора'},
      ],
      imagePath: '',
    ),
    Questions(
      category: 'text',
      question:
          'Если школьный автобус остановился на двухполосном шоссе для высадки пассажиров, включив красные сигнальные огни, то:',
      choices: [
        {'choice': 'Можно объехать автобус по обочине'},
        {
          'choice':
              'Можно объехать автобус, в каком бы направлении вы ни двигались, при отсутствии детей'
        },
        {
          'choice':
              'Транспорт, движущийся в любом направлении, должен остановиться',
          'isCorrect': 1
        },
        {
          'choice':
              'Можно объехать автобус по встречной полосе при отсутствии встречного транспорта'
        },
      ],
      imagePath: '',
    ),
    Questions(
      category: 'sign',
      question: 'Какая из указанных форм относится к знаку "Yield"?',
      choices: [
        {'choice': '№ 1'},
        {'choice': '№ 2', 'isCorrect': 1},
        {'choice': '№ 3'},
        {'choice': '№ 4'},
      ],
      imagePath: 'images/YeldSign.jpg',
    ),
    Questions(
      category: 'text',
      question: 'Паркуясь рядом с бордюром на дороге, идущей в горку, нужно:',
      choices: [
        {'choice': 'Повернуть передние колеса в сторону бордюра'},
        {'choice': 'Установить колеса параллельно бордюру'},
        {'choice': 'Повернуть колеса в любую сторону'},
        {
          'choice': 'Повернуть передние колеса в сторону проезжей части',
          'isCorrect': 1
        },
      ],
      imagePath: '',
    ),
    Questions(
      category: 'text',
      question: 'Какое из утверждений верное?',
      choices: [
        {
          'choice':
              'Все грузовики имеют пневматические тормоза, помогающие им быстрее остановиться'
        },
        {'choice': 'Грузовики более маневренные, чем легковые автомобили'},
        {
          'choice':
              'У грузовиков тормозной путь больше, чем у легковых автомобилей',
          'isCorrect': 1
        },
        {
          'choice':
              'У грузовиков слепые зоны меньше, чем у легковых автомобилей'
        },
      ],
      imagePath: '',
    ),
    Questions(
      category: 'text',
      question: 'Правило преимущества проезда нужно для:',
      choices: [
        {'choice': 'Постепенного отказа от светофоров на дорогах'},
        {'choice': 'Уменьшения числа аварий со школьными автобусами'},
        {'choice': 'Усложнения правил дорожного движения'},
        {
          'choice': 'Безопасного и равномерного движения транспорта на дорогах',
          'isCorrect': 1
        },
      ],
      imagePath: '',
    ),
    Questions(
      category: 'text',
      question: 'Для предотвращения заносов на скользкой дороге нужно:',
      choices: [
        {'choice': 'Замедляться перед входом в поворот'},
        {'choice': 'Тормозить заранее и с осторожностью'},
        {
          'choice':
              'Уменьшить давление на педаль тормоза, если колеса начнут блокироваться'
        },
        {'choice': 'Все перечисленное', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: 'text',
      question: 'Что из перечисленного является правилом безопасного вождения?',
      choices: [
        {'choice': 'Всегда смотрите прямо на дорогу перед собой'},
        {
          'choice':
              'Осматривайтесь по сторонам, чтобы быть в курсе дорожной ситуации',
          'isCorrect': 1
        },
        {
          'choice':
              'Уверенность в своих силах поможет избежать любых опасностей'
        },
        {'choice': 'Другие водители должны подстраиваться под ваши оплошности'},
      ],
      imagePath: '',
    ),
    Questions(
      category: 'text',
      question: 'Всегда запрещено парковаться:',
      choices: [
        {'choice': 'На улице с односторонним движением'},
        {'choice': 'У входа в здание'},
        {'choice': 'На пешеходном переходе', 'isCorrect': 1},
        {'choice': 'Ближе 50 футов (15 метров) от пожарного гидранта'},
      ],
      imagePath: '',
    ),
    Questions(
      category: 'text',
      question:
          'Водители, приближаясь к велосипедисту в ночное время, НЕ должны:',
      choices: [
        {'choice': 'Использовать фары ближнего света'},
        {'choice': 'Держаться от него на дистанции не менее 1 метра'},
        {'choice': 'Подавать звуковой сигнал', 'isCorrect': 1},
        {'choice': 'Соблюдать осторожность'},
      ],
      imagePath: '',
    ),
    Questions(
      category: 'text',
      question: 'Автомобили, въезжающие на скоростную трассу:',
      choices: [
        {'choice': 'Имеют преимущество проезда перед грузовиками'},
        {
          'choice': 'Должны уступить транспорту, движущемуся по шоссе',
          'isCorrect': 1
        },
        {'choice': 'Имеют право проезда'},
        {'choice': 'Должны сразу перестроиться в левую полосу'},
      ],
      imagePath: '',
    ),
    Questions(
      category: 'text',
      question:
          'Два автомобиля одновременно подъезжают к нерегулируемому перекрестку, у кого из них преимущество проезда?',
      choices: [
        {'choice': 'У автомобиля справа (2)', 'isCorrect': 1},
        {'choice': 'У автомобиля слева (1)'},
        {'choice': 'Ни у кого'},
        {'choice': 'У того, который едет быстрее'},
      ],
      imagePath: 'images/rightOfWay.jpg',
    ),
    Questions(
      category: 'sign',
      question: 'Знак "No Stopping Any Time" обозначает:',
      choices: [
        {'choice': 'Остановка разрешена для посадки и высадки пассажиров'},
        {
          'choice':
              'Остановка разрешена только по требованию сотрудника полиции',
          'isCorrect': 1
        },
        {'choice': 'Остановка запрещена при любых условиях'},
        {'choice': 'Остановка разрешена только для разгрузки и погрузки'},
      ],
      imagePath: '',
    ),
    Questions(
      category: 'text',
      question:
          'В чем заключается основное отличие при вождении по скоростному (highway) и обычному шоссе?',
      choices: [
        {
          'choice': 'На скоростном шоссе разрешенная скорость движения выше',
          'isCorrect': 1
        },
        {'choice': 'Грузовикам запрещено выезжать на скоростные шоссе'},
        {
          'choice':
              'Мотоциклисты на скоростном шоссе должны двигаться по правой полосе'
        },
        {'choice': 'На скоростном шоссе более плотный поток'},
      ],
      imagePath: '',
    ),
    Questions(
      category: 'text',
      question:
          'Если школьный автобус остановился на обочине, не включая красных огней, вы должны:',
      choices: [
        {'choice': 'Остановиться, пока автобус не поедет дальше'},
        {
          'choice':
              'Остановиться, только если находитесь на той же стороне, что и автобус'
        },
        {
          'choice': 'Осторожно проехать мимо автобуса, не останавливаясь',
          'isCorrect': 1
        },
        {
          'choice':
              'Остановиться, пока водитель автобуса не даст вам сигнал продолжить движение'
        },
      ],
      imagePath: '',
    ),
    Questions(
      category: 'sign',
      question: 'Этот знак означает:',
      choices: [
        {'choice': 'Переход запрещен'},
        {'choice': 'Впереди школьная зона'},
        {'choice': 'Впереди пешеходный переход', 'isCorrect': 1},
        {'choice': 'Рабочие на проезжей части'},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
    Questions(
      category: '',
      question: '',
      choices: [
        {'choice': ''},
        {'choice': ''},
        {'choice': ''},
        {'choice': '', 'isCorrect': 1},
      ],
      imagePath: '',
    ),
  ];

  List<Questions> get questions => [..._data];
}
