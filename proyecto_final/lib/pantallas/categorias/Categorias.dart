/*import 'package:flutter/material.dart';


class Categorias extends StatelessWidget {
  // Arreglo de nombres de categorías
  final List<String> nombresCategorias = [
    'Electrónica',
    'Moda',
    'Deportes',
    'Cuidado Personal',
    'Gaming',
    'Mascotas',
    'Hogar',
    'Libros',
    'Alimentación',
    'Juguetes',
  ];

  // Mapa de iconos asociados a las categorías
  final Map<String, IconData> iconosCategorias = {
    'Electrónica': Icons.devices,
    'Moda': Icons.accessibility,
    'Deportes': Icons.directions_run,
    'Cuidado Personal': Icons.favorite,
    'Gaming': Icons.videogame_asset,
    'Mascotas': Icons.pets,
    'Hogar': Icons.home,
    'Libros': Icons.book,
    'Alimentación': Icons.fastfood,
    'Juguetes': Icons.toys,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorías'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Dos columnas
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: nombresCategorias.length,
        itemBuilder: (context, index) {
          final nombreCategoria = nombresCategorias[index];
          final iconoCategoria = iconosCategorias[nombreCategoria];

          return GestureDetector(
            onTap: () {
              // Acción al hacer clic en una tarjeta
              print('Presionaste la categoría: $nombreCategoria');
              // Puedes navegar a más detalles de la categoría o realizar otra acción.
            },
            child: Card(
              margin: EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      iconoCategoria ?? Icons.category,
                      size: 50.0,
                    ),
                    SizedBox(height: 8.0),
                    Text(
                        nombreCategoria), // Nombre de la categoría desde el arreglo
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}*/
import 'package:flutter/material.dart';
import 'package:proyecto_final/pantallas/categorias/Producto.dart';
import 'package:proyecto_final/pantallas/carrito/carrito.dart';

class Categorias extends StatelessWidget {
  final List<String> nombresCategorias = [
    'Electrónica',
    'Moda',
    'Deportes',
    'Cuidado Personal',
    'Gaming',
    'Mascotas',
    'Hogar',
    'Libros',
    'Alimentación',
    'Juguetes',
    // Agrega más categorías aquí
  ];

  // Mapa de productos por cada categoría
  final Map<String, List<Producto>> productosPorCategoria = {
    'Electrónica': [
      Producto(
          'Samsung Galaxy A04e 32 GB negro 3 GB RAM',
          1999,
          'https://img.freepik.com/vector-gratis/pantalla-realista-smartphone-diferentes-aplicaciones_52683-30241.jpg?w=740&t=st=1700723646~exp=1700724246~hmac=5c6faa69ba72a47967ddc32e81d0cdc234d8e8fef5631f43bd5689411ae787dd',
          'Dispositivo desbloqueado para que elijas la compañía telefónica que prefieras.Tiene 2 cámaras traseras de 13Mpx/2Mpx.',
          'Samsung'),
      Producto(
          'Laptop Hp Envy 16-h1000la Intel Core I7 16gbram 1tbssd Touch',
          36999,
          'https://m.media-amazon.com/images/I/71o4AAATZqL.__AC_SX300_SY300_QL70_ML2_.jpg',
          'Aprovecha la posibilidad de tener conectividad sin inconvenientes con la HP Envy de 16", Además, gracias al procesador Intel®[1], esta laptop podrá procesar todo tipo de contenido..',
          'hp'),
      Producto(
          'Cámara de Microscopio',
          2574.00,
          'https://m.media-amazon.com/images/I/61fcZXE32bL.__AC_SX300_SY300_QL70_ML2_.jpg',
          'Cámara de Microscopio Adaptador de Cámara Industrial Pantalla de Alta Definición de 51MP Microscopio Estéreo Binocular Trinocular Cámara de Video con Ocular Electrónico EE. UU. 110‑240V(HY‑1139).',
          'Walfront'),
      Producto(
          'Traductor de voz inteligente Z2',
          1828.00,
          'https://ae01.alicdn.com/kf/H427c3855d7c04204a159905cc9898bb8b.jpg_640x640Q90.jpg_.webp',
          ' El dispositivo traductor de idiomas admite traducción de voz bidireccional en tiempo real en más de 200 países o regiones.',
          'Temu'),
      Producto(
          'Bascula Digital ',
          529.99,
          'https://m.media-amazon.com/images/I/61GMzFkGqZL._SX466_.jpg',
          'Raganet, Báscula Comercial 40 Kg, Báscula Digital Recargable Pantalla Lcd Función Tara, Para Tienda o Negocio.',
          'Raganet'),
      // Agrega más productos de electrónica aquí
    ],
    'Moda': [
      Producto(
          'Levis Camisa Hombre Classic Western Standard New Black Blac',
          674.99,
          'https://http2.mlstatic.com/D_NQ_NP_699966-MLM52265326809_112022-O.webp',
          'CLASSIC WESTERN STANDARD NEW BLACK BLACK. Una camisa elegante y cómoda para diversas ocasiones.',
          'Levis'),
      Producto(
          'Flexi Marcel 91607 Hombre Adultos Derby',
          1049,
          'https://http2.mlstatic.com/D_NQ_NP_881154-MLA50136642849_052022-O.webp',
          'Zapatos de moda para caminar con estilo y comodidad.Flexi es una empresa mexicana que fabrica y distribuye calzados y accesorios.',
          'Flexi'),
      Producto(
          'Abrigo',
          1999,
          'https://m.media-amazon.com/images/I/618pJWrnMBL._AC_SY741_.jpg',
          'Abrigo corto de lana con cinta decorativa en frente y mangas, con cuello de peluche desmontable. 82% Lana, 18% Poliamida Aplicación: 70% Acrílico, 30% Poliéster.',
          'Andre'),
      Producto(
          'Vestido de Mujer',
          299.99,
          'https://m.media-amazon.com/images/I/61Aj5cWY30L._AC_SX679_.jpg',
          'Vestido estampado con tirantes ajustables, pieza con alforzas decorativas, aplicación en cintura y cierre invisible en costado.',
          'André'),
      Producto(
          'Mochila Mujer Moda Oxford Impermeable Antirrobo Para Mujer',
          199.99,
          'https://http2.mlstatic.com/D_NQ_NP_607086-CBT49149892393_022022-O.webp',
          'Mochila con  Capacidad: 8L, Ancho: 15 cm, Altura: 32 cm, Con compartimento para laptop.',
          'Genérica'),

      // Agrega más productos de moda aquí
    ],
    // Agrega más categorías y productos
    'Deportes': [
      Producto(
          ' Maleta Deportiva Bolsa',
          253.99,
          'https://m.media-amazon.com/images/I/51k7P4qIB1L._AC_SY450_.jpg',
          'NANWEI Maleta Deportiva Bolsa de Deporte Gym con Compartimento para Zapatos y Bosillo Impermeable, Bolso de Viaje, para Hombres y Mujeres, Ligero (Rosa).',
          'Raganet'),
      Producto(
          'Tobillera Deportiva',
          175,
          'https://m.media-amazon.com/images/I/41S6VWkEs4L._SY445_SX342_QL70_ML2_.jpg',
          'QILAY Tobillera Deportiva de Compresión,Tobillera para Esguince Ortopédica,Ajustable,para Protección Deportiva,para Fitness,Tensión en el Tobillo, Esguinces y Alivio de Dolor de Hinchazón.',
          'Raganet'),
      Producto(
          'Playera Dama',
          399,
          'https://m.media-amazon.com/images/I/61IMouWb+SS._AC_SY741_.jpg',
          'Excelente playera deportiva que puedes usar para cualquier disciplina que practiques, no apesta con el sudor y muy ligera.',
          'MILES'),
      Producto(
          'Tenis para Mujer',
          1092.23,
          'https://m.media-amazon.com/images/I/512MmaGz0yL._AC_SY500_.jpg',
          'Entresuela DynaSoft, Suela de goma para una mejor tracción bajo los pies,Malla diseñada para mayor transpirabilidad.',
          'NIKE'),
      Producto(
          'Playera Licra Deportiva Correr Compresión Manga Larga Cost2',
          150.23,
          'https://http2.mlstatic.com/D_NQ_NP_679743-MLM43448990462_092020-O.webp',
          'Secado Rápido,Compresión,Cuida de los Rayos UV,Licra Deportiva y Calidad,Gym , Deportes , Entrenamiento, Correr,Súper Moda Deportiva,Shaperx,Manga Larga,Cómoda y Resistente,Spandex que Se te ajusta al cuerpo,Diferente Combinaciones de Moda.',
          'X-Shadow'),
      // Agrega más productos de moda aquí
    ],

    'Cuidado Personal': [
      Producto(
          'Crema',
          66.49,
          'https://m.media-amazon.com/images/I/71O+-iKsyAL._AC_SY450_.jpg',
          'NIVEA Gel Facial Refrescante Cuidado Facial (200 ml) con ácido hialurónico,24 horas de humectación para un piel fresca, suave y luminosa, ideal para piel grasa',
          'Nivea'),
      Producto(
          ' Kit de manicura profesional Salandens',
          199.99,
          'https://m.media-amazon.com/images/I/81vPXZj0cJL._AC_SY450_.jpg',
          'Manicura Set-Salandens 18 en 1 Manicura y Pedicura Profesional de pedicura profesional de acero inoxidable, tijeras para uñas, lima de uñas, gancho para orejas, pinzas, tijeras para el pelo de la nariz, maquinilla de afeitar para cejas de Uñas Belleza Cuidado de Uñas Cortadores con Cuero Negro Caso.',
          'Raganet'),
      Producto(
          'Eucerin Anti-pigment Crema Facial Día Anti-mancha Fps30 50ml Tipo de piel Todos',
          476.46,
          'https://http2.mlstatic.com/D_NQ_NP_686517-MLU72748496589_112023-O.webp',
          'Para todo tipo de piel,Para todo tipo de piel,Con factor de protección solar 30,Es un cosmético hipoalergénico,Es libre de parabenos,.',
          'Eucerin'),
      Producto(
          'Secadora de cabello Revlon Essentials RVDR negra',
          345,
          'https://http2.mlstatic.com/D_NQ_NP_826098-MLU70064844079_062023-O.webp',
          'Su potencia es de 1875W,Funciona con 2 niveles de temperatura, Con 2 velocidades,Incluye gancho para colgar',
          'Revlon'),
      Producto(
          'Plancha Cabello Profesional Smart Liss Titanio Puro + Argan',
          704,
          'https://http2.mlstatic.com/D_NQ_NP_787286-MLM70248333118_072023-O.webp',
          'Plancha Profesional 100 %Titanio Puro Smart Liss.Las placa de titanio puro proporcionan un alisado más rápido y un mayor brillo.',
          'Smartliss'),
      // Agrega más productos de moda aquí
    ],
    'Gaming': [
      Producto(
          'Alfombrilla con Luz Led',
          198.49,
          'https://m.media-amazon.com/images/I/51QAm8TtjCS.__AC_SX300_SY300_QL70_ML2_.jpg',
          'E T EASYTAO RGB Gaming Mousepad de Escritorio, Alfombrilla con Luz Led para Teclado y Ratón, Goma Impermeable con Base Antideslizante, 14 Luces Circulables, Tamaño de 300x800x4mm',
          'Raganet'),
      Producto(
          'Silla Gamer Silla Ergonomica Escritorio',
          3499.99,
          'https://m.media-amazon.com/images/I/61KYXjOaiUL._AC_SX522_.jpg',
          'GAMER-X- Silla Gamer Silla Ergonomica Escritorio - Silla ejecutiva de Oficina - Sillas Gaming ergonómica reclinable de Piel sintética para Home Office (All Black).',
          'Raganet'),
      Producto(
          'Audífonos Gamer Bluetooth Binden K55 Smart Touch',
          379.99,
          'https://http2.mlstatic.com/D_NQ_NP_823745-MLU70730197332_072023-O.webp',
          'Cuenta con tecnología True Wireless,Alcance inalámbrico de 10 m,La batería dura 4 h,Modo manos libres incluido,Asistentes de voz integrados: Google Assistant y Siri.',
          'Binden'),
      Producto(
          'Mouse gamer de juego inalámbrico recargable Free Wolf X8 black',
          170.99,
          'https://ae01.alicdn.com/kf/H699af33dd49b4dd7b817e7c9ea5d3cb57/Rat-n-ptico-inal-mbrico-X8-para-juegos-Mouse-ergon-mico-recargable-con-retroiluminaci-n-LED.jpg_.webp',
          'Es inalámbrico,Incluye batería recargable,Posee rueda de desplazamientoCon luces para mejorar la experiencia de uso.',
          'Free Wolf'),
      Producto(
          'Xtreme Pc Amd Radeon Renoir Ryzen 5 5600g 16gb Ssd 2tb Wifi',
          6539.99,
          'https://http2.mlstatic.com/D_NQ_NP_981940-MLM48487184538_122021-O.webp',
          'Gráficos AMD Radeon Graphics con frecuencia de 1900 MHz y 7 núcleos lo que proporciona un rendimiento rápido.',
          'FXTREME PC GAMING'),
      // Agrega más productos de moda aquí
    ],

    'Mascotas': [
      Producto(
          'Mochila Transportadora de Mascotas',
          299,
          'https://m.media-amazon.com/images/I/61u8bmR3H7L.__AC_SX300_SY300_QL70_ML2_.jpg',
          'Raganet, Mochila Transportadora de Mascotas, Perros y Gatos, Back Pack Portátil para Mascota Pequeña (Máximo 7Kg) Medidas: Ancho 18cm Largo 31cm Altura 42cm (Color Negro)',
          'Raganet'),
      Producto(
          'secador de pelo para mascotas',
          335.99,
          'https://m.media-amazon.com/images/I/518nOCK5R7S._AC_SX569_.jpg',
          'LEFUS secador de pelo para mascotas, Peine del secador de pelo para mascotas, Secador de pelo de aseo para mascotas con peine, temperatura ajustable y bajo ruido, 2 en 1 cuidado portátil de mascotas en el hogar para perros y gatos.',
          'Raganet'),
      Producto(
          '12 Collar De Luz Reflectante Para Perros Pequeños Y Gatos',
          121.31,
          'https://http2.mlstatic.com/D_NQ_NP_883864-MLM50273282362_062022-O.webp',
          'TAMAÑO AJUSTABLE: Vienen con 12 colores. Se adapta a un tamaño de cuello de 7,5 a 12,5 pulgadas (19-32 cm), el cuello mide 2/5 pulgadas',
          'MT Tech'),

      Producto(
          ' Collar Isabelino De Recuperación Ajustable Para Perros Y Gato',
          125,
          'https://http2.mlstatic.com/D_NQ_NP_702290-MLU71651857734_092023-O.webp',
          'El collar inflable está diseñado para proteger a tus mascotas de lesiones, erupciones y heridas postoperatorias',
          'VIESS'),
      Producto(
          'Toallitas Humedas Para Perros O Gatos Dry Pet',
          70,
          'https://http2.mlstatic.com/D_NQ_NP_998497-MLM43911660992_102020-O.webp',
          'Toallitas limpiadoras para perro y gatos 40 piezas.Toallitas húmedas para perros y gatos.',
          'Dry Pet'),
      // Agrega más productos de moda aquí
    ],

    'Hogar': [
      Producto(
          'Zapatera Organizador Closet',
          211.58,
          'https://http2.mlstatic.com/D_NQ_NP_2X_700815-MLU72847860047_112023-F.webp',
          'Organizador de zapatos con 9 Niveles 27 Pares Tela Color Gris',
          'Levels'),

      Producto(
          'Cortina Blackout',
          298.00,
          'https://http2.mlstatic.com/D_NQ_NP_681313-MLM70902696606_082023-O.webp',
          'En 2 Paneles 280x220cm ',
          'RPremium Quality'),

      Producto(
          'Ganchos para cortinas de baño',
          74.49,
          'https://http2.mlstatic.com/D_NQ_NP_634505-MLU72565298698_112023-O.webp',
          'Kit De 12 Ganchos De Acero Inoxidable Para Cortinas De Baño Color Plateado',
          'Mebix TRD'),

      Producto(
          '3 Repisas flotantes',
          569.00,
          'https://http2.mlstatic.com/D_NQ_NP_925335-MLU70261445616_072023-O.webp',
          'Repisas Flotantes Modernas Minimalistas Melamina 80x20 Cm Color Chocolate',
          'Poliespacios'),

      Producto(
          'Mesa de exterior',
          656.75,
          'https://http2.mlstatic.com/D_NQ_NP_968441-MLA71657204729_092023-O.webp',
          'Mesa de exterior Vitasense Garden MESA-12 de plástico color blanco',
          'Vitasense Garden'),
      // Agrega más productos de moda aquí
    ],

    'Libros': [
      Producto(
          'Valentía, De Kelbin Torres',
          178.49,
          'https://http2.mlstatic.com/D_NQ_NP_600986-MLA53108898663_122022-O.webp',
          'Título del libro	Valentía, Autor	Kelbin Torres,Idioma	Español	Español,Editorial del libro	Venado Real	Venado Real',
          'Valentía'),
      Producto(
          ' Este Dolor No Es Mío ',
          168.99,
          'https://http2.mlstatic.com/D_NQ_NP_798618-MLU70666546473_072023-O.webp',
          'Serie:Psicología, Autor:Mark Wolynn,Idioma:Español,Editorial del libro:Gaia Ediciones.',
          'Raganet'),
      Producto(
          'Invisible',
          145.49,
          'https://http2.mlstatic.com/D_NQ_NP_881928-MLU53275624419_012023-O.webp',
          'Invisible, de Moreno, Eloy. Serie Nube de Tinta Editorial Nube de Tinta, tapa blanda en español, 2020',
          'Moreno'),
      Producto(
          'LOS SECRETOS DE LA MENTE MILLONARIA',
          133.99,
          'https://http2.mlstatic.com/D_NQ_NP_984462-MLU53303037489_012023-O.webp',
          'Género: Negocios y economía,Número de páginas: 256,Dimensiones: 147 mm de ancho x 218 mm de alto.',
          'Harv'),
      Producto(
          'El Principe Encantado',
          199.99,
          'https://http2.mlstatic.com/D_NQ_NP_731891-MLU70683003119_072023-O.webp',
          'Título del libro:EL PRINCIPE ENCANTADO,Autor:Robert Coover,Idioma:Español.',
          'Pálido Fuego'),
      // Agrega más productos de moda aquí
    ],

    'Alimentación': [
      Producto(
          'Café Orgánico De Chiapas (3 Kg / 3 Categorías)',
          1020,
          'https://http2.mlstatic.com/D_NQ_NP_677159-MLM46739470633_072021-O.webp',
          'Café 100% orgánico, de especialidad y calidad de exportación.Contamos con el producto ideal para diferentes tipos de cafetera',
          'SABORO CAFÉ'),
      Producto(
          'Tulip Espaldilla Magro De Cerdo Cocido Categoria Extra 454g ',
          185,
          'https://http2.mlstatic.com/D_NQ_NP_781412-MLM51246208146_082022-O.webp',
          'La Paleta de Cerdo Cocida Tulip Picnic es una paleta sin gluten. Está hecho de carne de cerdo cocida o ahumada. .',
          'Picnic'),
      Producto(
          'Sal Forte Yodada Fluorurada 1 Kg',
          11.99,
          'https://http2.mlstatic.com/D_NQ_NP_678066-MLM41891277508_052020-O.webp',
          'Peso neto:1 kg, Tipo de sal:Fina,Tipo de envase:Bolsa.',
          'Forte'),
      Producto(
          'Pack 6 refrescos 7 Up sabor lima-limón en latas de 237ml',
          52.99,
          'https://http2.mlstatic.com/D_NQ_NP_766287-MLM49360601235_032022-O.webp',
          'Tipo de envase:Lata,Sabor:Lima limón,Unidades por pack:6,Volumen de la unidad:237 mL.',
          '7 UP'),
      Producto(
          'Tortilla Pasta Para Dumplings Optimroll 700g ',
          229,
          'https://http2.mlstatic.com/D_NQ_NP_736541-MLM48782883005_012022-O.webp',
          'Pasta en forma de tortilla lista para rellenar.Ideal para hacer dumplings y wontons rellenos.Diámetro: 9cm,Peso neto: 700g.',
          'OPTIMROLL'),
      // Agrega más productos de moda aquí
    ],

    'Juguetes': [
      Producto(
          'Casa De Muñecas',
          474.05,
          'https://http2.mlstatic.com/D_NQ_NP_615310-MLU72612917659_112023-O.webp',
          'Casita Casa De Muñecas Led Castillo De Princesa Juguete Color Rosa',
          'ARMONI'),

      Producto(
          'Carro a control remoto',
          434.95,
          'https://http2.mlstatic.com/D_NQ_NP_754496-CBT71741833598_092023-O.webp',
          'Todo Terreno Juguete Carros Control Remoto Car Con Led Luces',
          'Cars'),

      Producto(
          'Caja Registradora Infantil',
          243.83,
          'https://http2.mlstatic.com/D_NQ_NP_702949-MLM72286178882_102023-O.webp',
          'Juego Para Cocinita De Juguete',
          'Azuldimen'),

      Producto(
          'Carta casita de juguete ',
          296.00,
          'https://http2.mlstatic.com/D_NQ_NP_623542-CBT47800580240_102021-O.webp',
          'Tienda Carpa Casita Casa Juguete Niños Campana Plegable',
          'Zelany'),

      Producto(
          'Pizarra Mágica',
          66.00,
          'https://http2.mlstatic.com/D_NQ_NP_937834-MLA71481777396_092023-O.webp',
          'Juguete Pizarra Mágica Lcd 10 Pulgadas Para Dibujar Rosa',
          'Lian Eighty'),
      // Agrega más productos de moda aquí
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categorías'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: nombresCategorias.length,
        itemBuilder: (context, index) {
          final nombreCategoria = nombresCategorias[index];
          final productos = productosPorCategoria[nombreCategoria] ?? [];

          return GestureDetector(
            onTap: () {
              // Acción al hacer clic en una categoría
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetallesCategoria(
                    categoria: nombreCategoria,
                    productos: productos,
                  ),
                ),
              );
            },
            child: Card(
              margin: EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.category,
                      size: 40.0,
                    ),
                    SizedBox(height: 8.0),
                    Text(nombreCategoria),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

// Detalles de categoria sin scroll infinito (No borrar por si hay errores con el scroll)
// class DetallesCategoria extends StatelessWidget {
//   final String categoria;
//   final List<Producto> productos;

//   DetallesCategoria({required this.categoria, required this.productos});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Productos de $categoria'),
//       ),
//       body: GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 1, // Puedes ajustar el número de columnas aquí
//           crossAxisSpacing: 8.0,
//           mainAxisSpacing: 8.0,
//         ),
//         itemCount: productos.length,
//         itemBuilder: (context, index) {
//           final producto = productos[index];

//           return Card(
//             margin: EdgeInsets.all(8.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Ajusta el tamaño de la imagen según tus preferencias
//                 Image.network(
//                   producto.imagenUrl,
//                   width: double.infinity, // O ajusta un ancho específico
//                   height: 350, // Ajusta la altura según tus preferencias
//                   fit: BoxFit.cover,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         producto.nombre,
//                         style: TextStyle(
//                             fontSize: 16, fontWeight: FontWeight.bold),
//                         maxLines: 2, // Limita el número de líneas de texto
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                       SizedBox(height: 4),
//                       Text(
//                         '\$${producto.precio.toStringAsFixed(2)}',
//                         style: TextStyle(fontSize: 14, color: Colors.green),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Center(
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => DetallesProducto(producto),
//                         ),
//                       );
//                     },
//                     child: Text('Ver Detalles'),
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
class DetallesCategoria extends StatefulWidget {
  final String categoria;
  final List<Producto> productos;

  DetallesCategoria({required this.categoria, required this.productos});

  @override
  _DetallesCategoriaState createState() => _DetallesCategoriaState();
}

class _DetallesCategoriaState extends State<DetallesCategoria> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);

    // Puedes ajustar este valor para tener más duplicados y permitir un scroll más largo
    //final int duplicateCount = 2;

    widget.productos.addAll(
        List<Producto>.from(widget.productos)..addAll(widget.productos));
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      // Llegaste al final del contenido, regresa al inicio
      _scrollController.jumpTo(_scrollController.position.minScrollExtent);
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Productos de ${widget.categoria}'),
      ),
      body: GridView.builder(
        controller: _scrollController,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1, // Puedes ajustar el número de columnas aquí
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemBuilder: (context, index) {
          final producto = widget.productos[index];

          return Card(
            margin: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  producto.imagenUrl,
                  width: double.infinity,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        producto.nombre,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 4),
                      Text(
                        '\$${producto.precio.toStringAsFixed(2)}',
                        style: TextStyle(fontSize: 12, color: Colors.green),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetallesProducto(producto),
                        ),
                      );
                    },
                    child: Text('Ver Detalles'),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: widget.productos.length,
      ),
    );
  }
}

class DetallesProducto extends StatelessWidget {
  final Producto producto;

  DetallesProducto(this.producto);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(producto.nombre),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              producto.imagenUrl,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Nombre: ${producto.nombre}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'Precio: \$${producto.precio.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Marca: ${producto.marca}',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Descripción: ${producto.descripcion}',
              style: TextStyle(fontSize: 16),
            ),
            // Agrega más detalles aquí si es necesario
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    if (producto.cantidadEnCarrito > 0) {
                      // Reducir la cantidad en el carrito
                      producto.cantidadEnCarrito--;
                      (context as Element).markNeedsBuild();
                    }
                  },
                ),
                Text(
                  '${producto.cantidadEnCarrito}', // Mostrar la cantidad en el carrito
                  style: TextStyle(fontSize: 20),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    // Aumentar la cantidad en el carrito
                    producto.cantidadEnCarrito++;
                    (context as Element).markNeedsBuild();
                  },
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                cart.agregarAlCarrito(producto);
                // Agregar el producto al carrito aquí
                // Puedes manejar la lógica para agregarlo al carrito
                // por ejemplo, usando un provider o una clase de carrito.
              },
              child: Text('Agregar al carrito'),
            ),
          ],
        ),
      ),
    );
  }
}