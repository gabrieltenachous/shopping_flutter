import 'package:flutter/material.dart';
import 'package:shopping/widgets/product/product-card.widget.dart';

class ProductList extends StatelessWidget {
  final Axis scrollDirection;

  ProductList({@required this.scrollDirection});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: scrollDirection,
        children: <Widget>[
          ProductCard(
            title: "Laravel",
            description: "Melhor Framework PHP",
            image: "assets/image_laravel.png",
            nivel: "Intermediario",
            detalhe:
                "Laravel é um framework PHP de código aberto gratuito, criado por Taylor Otwell e destinado ao desenvolvimento de aplicações web seguindo o padrão arquitetônico model - view - controller e baseado em Symfony.",
          ),
          ProductCard(
            title: "Spring Boot",
            description: "Framework para plataforma Java",
            image: "assets/Image_spring_boot.png",
            nivel: "Iniciante",
            detalhe:
                "O Spring Framework é um framework de aplicação e inversão de contêiner de controle para a plataforma Java. Os principais recursos da estrutura podem ser usados ​​por qualquer aplicativo Java, mas existem extensões para a construção de aplicativos da web na plataforma Java EE.",
          ),
          ProductCard(
              title: "HTML",
              description: "A linguagem de marcação de hipertexto",
              image: "assets/Image_html.png",
              nivel: "Avançado",
              detalhe:
                  "A linguagem de marcação de hipertexto ou HTML é a linguagem de marcação padrão para documentos projetados para serem exibidos em um navegador da web. Pode ser auxiliado por tecnologias como Cascading Style Sheets e linguagens de script como JavaScript."),
          ProductCard(
            title: "Firebase",
            description: "Variedade de ferramentas e serviços pela Google",
            image: "assets/Image_firebase.png",
            nivel: "Intermediario",
            detalhe:
                "Firebase é uma plataforma desenvolvida pelo Google para a criação de aplicativos móveis e da web. Era originalmente uma empresa independente fundada em 2011. Em 2014, o Google adquiriu a plataforma e agora é sua oferta principal para o desenvolvimento de aplicativos.",
          ),
          ProductCard(
            title: "ASP.NET ",
            description: "Estrutura de aplicativo ao lado do servidor",
            image: "assets/Image_asp_net.png",
            nivel: "Avançado",
            detalhe:
                "ASP.NET é uma estrutura de aplicativo da Web do lado do servidor de código aberto projetada para desenvolvimento da Web para produzir páginas da Web dinâmicas. Ele foi desenvolvido pela Microsoft para permitir que os programadores criem sites, aplicativos e serviços dinâmicos.",
          ),
        ],
      ),
    );
  }
}
