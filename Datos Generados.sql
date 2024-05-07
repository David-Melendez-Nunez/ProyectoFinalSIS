-- USUARIOS --

INSERT INTO `usuarios` (`usuario_nombre`,`email`,`contrasenia`,`telefono`)
VALUES
  ("Lunea Beach","dolor.dapibus@hotmail.net","YTG54TPI5GA","0800 132 5884"),
  ("Prescott Caldwell","urna@hotmail.org","JEF44FKM4UR","07491 937655"),
  ("Echo Wall","sem.pellentesque@icloud.net","TJB61NWJ1JM","0500 522044"),
  ("Kiayada Walters","diam.vel@protonmail.com","VQO94SMT7DQ","0800 721 5848"),
  ("Noble Sanders","ac.turpis@icloud.com","YLX74EGI6KB","056 1419 9851"),
  ("Rhiannon Hensley","libero.lacus@aol.net","UDR13GJE5GS","0351 761 4204"),
  ("Kevyn Richmond","eu.dolor.egestas@protonmail.ca","TIB87LEV9ST","0914 725 1437"),
  ("Alvin Richard","magna.nec@yahoo.org","CJT79ESN5KS","(01629) 93122"),
  ("Brock Ewing","condimentum.donec@icloud.org","TED42LJW2PZ","(0151) 600 4428"),
  ("Ginger Dudley","nulla.interdum.curabitur@google.org","IDI28KFM8BW","0867 202 7015");
INSERT INTO `usuarios` (`usuario_nombre`,`email`,`contrasenia`,`telefono`)
VALUES
  ("Avram Reynolds","ultricies.adipiscing@yahoo.couk","MTV57LSO6KJ","0318 195 4336"),
  ("Anthony Smith","in.dolor@hotmail.org","CDC58ROU4SF","(015956) 34334"),
  ("Jasmine Holmes","tortor.at@hotmail.edu","IFP78YKQ6CO","0344 805 6251"),
  ("Lillith Doyle","ultricies.dignissim@outlook.ca","FPB36QNK0LI","0845 46 47"),
  ("Kenneth Workman","porttitor.vulputate@aol.couk","EYS73YFN7NC","0800 361515"),
  ("Jayme Reilly","lorem.vehicula@protonmail.edu","DPB11IEH1WG","(025) 4535 4091"),
  ("Honorato Noble","ipsum.sodales.purus@aol.net","ENH97MHN6YI","0322 857 2695"),
  ("Dominic Delaney","egestas.aliquam@aol.couk","JCW13DLN4MR","0500 338674"),
  ("Meghan Whitfield","vitae.orci@yahoo.com","XDM28DTH6CY","07294 499154"),
  ("Uma Pacheco","amet.nulla@outlook.com","JMQ72JJP1PA","(016977) 2552");

-- compras --

INSERT INTO `compras` (`cantidad_producto`,`usuario_id_compra`,`precio_unidad`)
VALUES
  (8,30,3),
  (2,1,8),
  (3,30,3),
  (0,10,1),
  (6,28,6),
  (5,5,4),
  (1,17,11),
  (5,12,7),
  (4,22,10),
  (8,14,10);
INSERT INTO `compras` (`cantidad_producto`,`usuario_id_compra`,`precio_unidad`)
VALUES
  (2,26,0),
  (4,4,6),
  (4,16,8),
  (1,25,2),
  (7,9,5),
  (5,13,9),
  (3,2,5),
  (8,15,2),
  (8,8,2),
  (9,20,3);
INSERT INTO `compras` (`cantidad_producto`,`usuario_id_compra`,`precio_unidad`)
VALUES
  (2,21,3),
  (7,27,7),
  (8,4,7),
  (8,8,4),
  (5,16,7),
  (7,28,7),
  (9,27,4),
  (3,3,7),
  (4,28,9),
  (8,10,2);

--------------------------

-- productos --


INSERT INTO `productos` (`stock_producto`,`nombre_producto`,`pvp_producto`)
VALUES
  (6,"Hyatt Stuart",7),
  (2,"Branden Le",2),
  (8,"Daphne Wilder",6),
  (9,"Heidi Baird",10),
  (5,"Oscar Robinson",2),
  (8,"Yvette Wright",0),
  (1,"Uriah Byrd",0),
  (7,"Jaden Russell",9),
  (7,"Driscoll Jensen",1),
  (9,"Adrian Whitney",4);
INSERT INTO `productos` (`stock_producto`,`nombre_producto`,`pvp_producto`)
VALUES
  (3,"Cassandra Randall",0),
  (5,"Bertha Kirk",2),
  (6,"Sean Melton",6),
  (10,"Dale Meadows",6),
  (4,"Uriah Fuentes",4),
  (4,"Cassandra Burnett",9),
  (8,"Daryl Norris",8),
  (7,"Marah Gay",9),
  (4,"Amy Serrano",9),
  (5,"Dante Dodson",4);

  -- configuraciones (Tabla de Administradores) --

  INSERT INTO `configuraciones` (`user_name`,`pass`)
VALUES
  ("Seth Lyons","SCP17XUZ4WG"),
  ("Kerry Mills","GXU51NZS6OD"),
  ("Ciara Fischer","UJD36BPW5MI"),
  ("Noah Hammond","WJY09QDU5RY"),
  ("Nomlanga Wright","ECV57DXS3MX"),
  ("Felicia Wilkerson","MXT46YMI2QS"),
  ("Boris Rodriguez","FDD34RQN8QQ"),
  ("Allegra Benson","BOQ41HMI5XX"),
  ("Davis Graves","CPD24OIR3FO"),
  ("Isaiah Rose","LXK83QBV5LE");
INSERT INTO `configuraciones` (`user_name`,`pass`)
VALUES
  ("TaShya Dotson","XBL18YKP5CT"),
  ("Nathaniel Kline","BPF23PLL3DO"),
  ("Caleb Meyers","LHP35ODF3ER"),
  ("Talon Moran","XWW36OUY4JO"),
  ("Guinevere Durham","RPF52OFI7XK"),
  ("Nasim Frye","FNH57UQJ0KO"),
  ("Dexter Perry","ROB21KEK1LF"),
  ("Sasha Welch","EJO66MJJ8EB"),
  ("Abdul Richards","NNL95OIB1GD"),
  ("Amaya Bonner","OCS85YPU0NR");

INSERT INTO compras_has_productos (id_compra, id_productos) 
SELECT minc + floor(rand()*(maxc-minc)) , minp + floor(rand()*(maxp-minp))
from compras, productos, 
(select max(compra_id) maxc, min(compra_id) minc FROM compras) tabla1, 
(select max(producto_id) maxp, min(producto_id) minp FROM productos) tabla2;