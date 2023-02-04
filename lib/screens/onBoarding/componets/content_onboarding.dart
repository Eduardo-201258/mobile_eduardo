class ContentOnboard{
  String img = '';
  String text = '';
  String description = '';


  ContentOnboard(
    {required this.img, required this.text, required this.description});

}

List<ContentOnboard> contents = [
  ContentOnboard(
    img: 'lib/assets/images/B1.png', 
    text: 'ESPARCIMIENTO', 
    description: 'Brindamos todos los servicios para consentir a tu mascota.'
  ),
  ContentOnboard(
    img: 'lib/assets/images/B2.png', 
    text: 'ADOPCION', 
    description: 'Nulla faucibus tellus ut odio scelerisque, vitae molestie lectus feugiat.'
  ),
  ContentOnboard(
    img: 'lib/assets/images/B3.png',  
    text: 'HOSPITALIDAD', 
    description: 'Nulla faucibus tellus ut odio scelerisque, vitae molestie lectus feugiat.'
  ),
  ContentOnboard(
    img: 'lib/assets/images/B4.png',  
    text: 'VETERINARIA', 
    description: 'Nulla faucibus tellus ut odio scelerisque, vitae molestie lectus feugiat.'
  ),
  ContentOnboard(
    img: 'lib/assets/images/B5.png',  
    text: 'TIENDA', 
    description: 'Compra todas las necesidades de tu mascota sin salir de casa'
  ),
];