# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if !User.any?
    User.create! :email => 'brianf_lp@hotmail.com', :password => 'P@55word', :password_confirmation => 'P@55word'
    User.create! :email => 'anto.andreini@gmail.com', :password => 'mimichi1995', :password_confirmation => 'mimichi1995'
    User.create! :email => 'catastropedia@gmail.com', :password => 'P@55word', :password_confirmation => 'P@55word'
end
Novedad.create! :titulo=> '50 años de erupciones volcánicas', :fecha=> DateTime.now, :copete=>'Desde 1968 se han confirmado más de 1.700 emisiones violentas de volcanes en todo el mundo; la de mayor magnitud fue la del Pinatubo (Filipinas) en 1991', :contenido=>'En los últimos 50 años la erupción más potente fue la del Pinatubo (isla de Luzón, Filipinas), que en 1991 alcanzó un seis en la escala. Más atrás en el tiempo, la del Krakatoa (Indonesia) en 1883 llegó también a ese mismo nivel y la del Tambora (también en Indonesia), en 1815, a siete. Los datos proceden de la base Global Volcanism Program, del Instituto Smithsoniano y la cartografía muestra los topónimos en inglés.', :user=>User.first, :imagen=>'http://de10.com.mx/sites/default/files/styles/detalle_nota/public/2018/06/04/guatemala_volcan_55888135_0.jpg?itok=sk2E3wbX', :altimg=>'Volcán en erupción'
Novedad.create! :titulo=> 'Salta contaría con un cuerpo de rescate para catástrofes de grandes magnitudes', :fecha=> DateTime.now, :copete=>'Néstor Ruíz de Los Llanos, Secretario de Protección Civil en diálogo con InformateSalta anunció la convocatoria de voluntarios. "En un año podríamos contar con este grupo que actuaría en el país y países limítrofes" afirmó.', :contenido=>'Actualmente la ONU tiene autorizado en América cuatro grupos de este tipo, en países como EEUU, Chile y Colombia. En Salta se busca conseguir conformar este grupo justamente aprovechando que Nación está lanzando la reglamentación para la acreditación Nacional de Equipos de Búsqueda y Rescate dentro de los estándares internacionales. Una vez conseguido, calculan que en un año, podrán aspirar a ser acreditados y convertirse así en la primera provincia en conseguirlo.', :user=>User.first, :imagen=>'http://informatesalta.com.ar/download/multimedia.miniatura.8d2cba220ae1771a.72657363617465735f6d696e6961747572612e6a7067.jpg', :altimg=>'Equipo de rescate trabajando en un derrumbe'
Alertum.create! :user=>User.first, :titulo=>'Vientos intensos en zona cordillerana', :zonas=>'Zona cordillerana de Catamarca, Zona cordillerana de La Rioja, Zona cordillerana de Mendoza, Zona cordillerana de Salta, Zona cordillerana de San Juan', :descripcion=>'Continuarán soplando vientos del sector oeste con velocidades entre 60 y 90 km/h con ráfagas, especialmente por encima de los 4000 msnm. Es posible la ocurrencia de viento blanco en la zona cordillerana de San Juan y Mendoza. Los vientos intensos se mantendrán al menos hasta la mañana del martes 5 de junio.', :fecha=>DateTime.now
Alertum.create! :user=>User.first, :titulo=>'Nevadas intensas', :zonas=>'Zona cordillerana del noroeste de Chubut, Zona cordillerana del sur de Neuquén, Zona cordillerana de Río Negro', :descripcion=>'El ingreso de aire frío provocará nevadas a partir de lo que resta de hoy y al menos hasta la tarde del viernes 8 sobre el área de cobertura. Algunas de estas nevadas pueden ser de intensidad fuerte.', :fecha=>DateTime.now
Articulo.create! :titulo=> '¿Que hacer en caso de inundación?', :fecha=> DateTime.now, :contenido=>'Tenga en su plan de protección los artículos esenciales para hacer frente a las emergencias, como por ejemplo: materiales de construcción como láminas de madera, envolturas de plástico, clavos, martillo, pala, sacos de arena, etc. Además prepare un paquete de primeros auxilios, medicinas, comida no perecedera, enlatados y abrelatas y por supuesto agua potable; dinero en efectivo y tarjetas de crédito; radios con pilas, linternas y mecanismos de calentar agua o comida; asegúrese de poseer vestimenta y zapatos adecuados para la lluvia como botas e impermeables.', :user=>User.first, :imagen=>'https://www.miaminews24.com/wp-content/uploads/2017/06/Emiten-alertas-de-inundaci%C3%B3n-para-varias-partes-del-sur-de-la-Florida.jpg', :altimg=>'Inundación en Florida'
Articulo.create! :titulo=> 'Técnicas de extinción de incendios forestales', :fecha=> DateTime.now, :contenido=>'El ataque al fuego puede ser directo o indirecto. El ataque directo es el que aplica cualquier tratamiento directamente sobre el material en combustión, como es mojarlo, axfisiarlo, o aplacarlo químicamente, o separando físicamente el combustible que está ardiendo del que aún no. En esto juega un papel fundamental el uso de camiones cisterna e hidroaviones, con los que se aplica agua o agente extintor al fuego. Por su parte, el ataque indirecto es el que prepara tácticas de extinción a una cierta distancia del fuego que se aproxima. Reducción de combustible, cortafuegos de contingencia, contrafuegos y el empapado de combustibles aún no quemados son algunos ejemplos.', :user=>User.first, :imagen=>'https://i.avoz.es/default/2017/06/20/00121497914101685336704/Foto/afp_20170619_064034950.jpg', :altimg=>'Incendio forestal'
