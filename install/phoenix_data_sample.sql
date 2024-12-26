# $Id$
#
# CE Phoenix, E-Commerce made Easy
# https://phoenixcart.org
#
# Copyright (c) 2021 Phoenix Cart
#
# Released under the GNU General Public License
#
# NOTE: * Please make any modifications to this file by hand!
#       * DO NOT use a mysqldump created file for new changes!
#       * Please take note of the table structure, and use this
#         structure as a standard for future modifications!

INSERT INTO advert VALUES ('1', 'Our Farm', 'products_new.php', '', 'our-farm.webp', 'carousel', NOW(), NULL, '20', '1');
INSERT INTO advert VALUES ('2', 'Strawberries', '', '', 'strawberry.webp', 'carousel', NOW(), NULL, '10', '1');
INSERT INTO advert VALUES ('3', 'Lemons', 'index.php', 'cPath=1_4', 'fruit-8848715_640.webp', 'index', NOW(), NULL, '30', '1');
INSERT INTO advert VALUES ('4', 'Easy Ordering', 'privacy.php', '', 'laptop-7723139_640.webp', 'index', NOW(), NULL, '40', '1');

INSERT INTO advert_info VALUES ('1', '1', '<p class=\"fs-2 font-weight-bold fw-semibold mb-1\">Fresh fruit direct to your door</p>\r\n<p class=\"fs-4\">Grown with <i class="fas fa-heart fa-beat text-danger"></i> on our Devonshire Farm</p>\r\n<p><span class="btn btn-info">Click here to view our full range</span></p>');
INSERT INTO advert_info VALUES ('2', '1', '<p class=\"fs-2 font-weight-bold fw-semibold mb-1\">Strawberries Coming Soon</p>\r\n<p class=\"fs-4\">Pick Your Own at our Farm or delivered direct to your door</p>');
INSERT INTO advert_info VALUES ('3', '1', '<p class=\"fs-5 font-weight-bold fw-semibold card-title\">If life gives you lemons... make Juice!</p>\r\n<p class=\"card-text\">See our full range of Citrus Fruit now</p>');
INSERT INTO advert_info VALUES ('4', '1', '<p class=\"fs-5 font-weight-bold fw-semibold card-title\">Checkout easily using our 3 step checkout!</p>\r\n<p class=\"card-text\">Your details are kept safe and secure</p>');

UPDATE configuration SET configuration_value = 'carousel' WHERE configuration_key = 'MODULE_CONTENT_I_SLIDER_GRP';
UPDATE configuration SET configuration_value = 'index' WHERE configuration_key = 'I_ADVERTS_LINK';

UPDATE configuration SET configuration_value = '1;2' WHERE configuration_key = 'I_BRAND_ICONS_CSV';

INSERT INTO categories VALUES (1, 'sample/fruit.webp', 0, 10, NOW(), NULL);
INSERT INTO categories VALUES (2, 'sample/vegetables-1.webp', 0, 20, NOW(), NULL);
INSERT INTO categories VALUES (3, 'sample/apples-pears.webp', 1, 10, NOW(), NULL);
INSERT INTO categories VALUES (4, 'sample/citrus.webp', 1, 20, NOW(), NULL);

INSERT INTO categories_description VALUES ('1', '1', 'Fruit', 'Fruit contains many nutrients and vitamins essential to health.  Eating fruit is an essential part of a healthy balanced diet.', null, null);
INSERT INTO categories_description VALUES ('2', '1', 'Vegetables', null, null, null);
INSERT INTO categories_description VALUES (3, 1, 'Apples & Pears', 'Fresh and crisp with a variety of flavours.', NULL, NULL);
INSERT INTO categories_description VALUES (4, 1, 'Citrus Fruit', 'Tart, tangy and full of Vitamin C.', NULL, NULL);

INSERT INTO manufacturers VALUES (1, 'Fiacre', 'brands/fiacre.jpg', '', '', '', '', '', '0', now(), null);
INSERT INTO manufacturers VALUES (2, 'Von Peacock', 'brands/von-peacock.jpg', '', '', '', '', '', '0', now(), null);

INSERT INTO manufacturers_info VALUES (1, 1, '', 0, null, null, null, null);
INSERT INTO manufacturers_info VALUES (2, 1, '', 0, null, null, null, null);

INSERT INTO products VALUES (1, 1000, 'ORA-1', 'sample/orange-1.webp', 9.99, NOW(), NULL, NULL, 0.30, 1, 1, 1, 0, NULL);
INSERT INTO products VALUES (2, 1000, 'LEM-1', 'sample/lemon-1.webp', 7.99, NOW(), NULL, NULL, 0.30, 1, 1, 1, 0, NULL);
INSERT INTO products VALUES (3, 1000, 'PEA-1', 'sample/pear-1.webp', 4.99, NOW(), NULL, NULL, 0.30, 1, 1, 0, 0, NULL);
INSERT INTO products VALUES (4, 1000, 'APP-1', 'sample/apple-1.webp', 4.99, NOW(), NULL, NULL, 0.30, 1, 1, 2, 0, NULL);
INSERT INTO products VALUES (5, 1000, 'TOM-1', 'sample/tomatoes-1.webp', 1.99, NOW(), NULL, NULL, 0.50, 1, 1, 2, 0, NULL);
INSERT INTO products VALUES (6, 1, 'GTOM-1', 'sample/green-tomatoes-1.webp', 1.9900, NOW(), NULL, NULL, 0.50, 1, 0, 2, 0, NULL);
INSERT INTO products VALUES (7, 10, 'GAPP-1', 'sample/green-apple-1.webp', 4.9900, NOW(), NULL, NULL, 0, 1, 0, 2, 0, NULL);
INSERT INTO products VALUES (8, 0, 'GPF-1', 'sample/grapefruit-1.webp', 8.9900, NOW(), NULL, NOW() + INTERVAL 90 DAY, 0.40, 1, 0, 2, 0, NULL);
INSERT INTO products VALUES (9, 1000, 'LIM-1', 'sample/lime-1.webp', 8.4900, NOW(), NULL, NULL, 0.35, 1, 0, 2, 0, NULL);

INSERT INTO products_description VALUES (1, 1, 'Oranges', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Turpis massa tincidunt dui ut ornare lectus sit amet est. Imperdiet proin fermentum leo vel orci porta. Cursus metus aliquam eleifend mi in nulla posuere. Nunc scelerisque viverra mauris in. Amet risus nullam eget felis eget nunc lobortis mattis aliquam. Blandit volutpat maecenas volutpat blandit aliquam. Fermentum iaculis eu non diam.</p>\r\n\r\n<p>Image by <a href=\"https://pixabay.com/users/Eelffica-52436/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=756390\">Eelffica</a> from <a href=\"https://pixabay.com/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=756390\">Pixabay</a></p>\r\n\r\n<p>Id donec ultrices tincidunt arcu non sodales. Id ornare arcu odio ut sem. Velit sed ullamcorper morbi tincidunt ornare massa eget. Mi eget mauris pharetra et ultrices neque. Pellentesque dignissim enim sit amet venenatis. Pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus. Venenatis cras sed felis eget velit. Justo eget magna fermentum iaculis eu non diam phasellus vestibulum. Sollicitudin aliquam ultrices sagittis orci a scelerisque purus semper eget. Ultrices tincidunt arcu non sodales neque sodales ut. Integer malesuada nunc vel risus.</p>\r\n\r\n<p>Nunc sed id semper risus in hendrerit gravida. In cursus turpis massa tincidunt dui ut ornare lectus. Mattis rhoncus urna neque viverra justo nec ultrices dui. Ac tincidunt vitae semper quis lectus nulla at. Dui vivamus arcu felis bibendum ut. Ultricies tristique nulla aliquet enim tortor. Cras pulvinar mattis nunc sed blandit libero volutpat sed. Nisl nunc mi ipsum faucibus. Quis commodo odio aenean sed adipiscing. Tortor posuere ac ut consequat. Felis eget nunc lobortis mattis aliquam faucibus purus in. Aliquet lectus proin nibh nisl condimentum id venenatis a. Rhoncus mattis rhoncus urna neque viverra. Proin nibh nisl condimentum id. Dolor morbi non arcu risus.</p>', '', 0, 'Oranges are not the only fruit...', null, null);
INSERT INTO products_description VALUES (2, 1, 'Lemons', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Turpis massa tincidunt dui ut ornare lectus sit amet est. Imperdiet proin fermentum leo vel orci porta. Cursus metus aliquam eleifend mi in nulla posuere. Nunc scelerisque viverra mauris in. Amet risus nullam eget felis eget nunc lobortis mattis aliquam. Blandit volutpat maecenas volutpat blandit aliquam. Fermentum iaculis eu non diam.</p>\r\n\r\n<p>Images by <a href=\"https://pixabay.com/users/Eelffica-52436/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=756390\">Eelffica</a> from <a href=\"https://pixabay.com/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=756390\">Pixabay</a> and <a href="https://pixabay.com/users/alles-2597842/?utm_source=link-attribution&utm_medium=referral&utm_campaign=image&utm_content=5069648">Alexander Lesnitsky</a> from <a href="https://pixabay.com//?utm_source=link-attribution&utm_medium=referral&utm_campaign=image&utm_content=5069648">Pixabay</a></p>\r\n\r\n<p>Id donec ultrices tincidunt arcu non sodales. Id ornare arcu odio ut sem. Velit sed ullamcorper morbi tincidunt ornare massa eget. Mi eget mauris pharetra et ultrices neque. Pellentesque dignissim enim sit amet venenatis. Pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus. Venenatis cras sed felis eget velit. Justo eget magna fermentum iaculis eu non diam phasellus vestibulum. Sollicitudin aliquam ultrices sagittis orci a scelerisque purus semper eget. Ultrices tincidunt arcu non sodales neque sodales ut. Integer malesuada nunc vel risus.</p>\r\n\r\n<p>Nunc sed id semper risus in hendrerit gravida. In cursus turpis massa tincidunt dui ut ornare lectus. Mattis rhoncus urna neque viverra justo nec ultrices dui. Ac tincidunt vitae semper quis lectus nulla at. Dui vivamus arcu felis bibendum ut. Ultricies tristique nulla aliquet enim tortor. Cras pulvinar mattis nunc sed blandit libero volutpat sed. Nisl nunc mi ipsum faucibus. Quis commodo odio aenean sed adipiscing. Tortor posuere ac ut consequat. Felis eget nunc lobortis mattis aliquam faucibus purus in. Aliquet lectus proin nibh nisl condimentum id venenatis a. Rhoncus mattis rhoncus urna neque viverra. Proin nibh nisl condimentum id. Dolor morbi non arcu risus.</p>', '', 0, 'When life gives you lemons...', null, null);
INSERT INTO products_description VALUES (3, 1, 'Pears', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Turpis massa tincidunt dui ut ornare lectus sit amet est. Imperdiet proin fermentum leo vel orci porta. Cursus metus aliquam eleifend mi in nulla posuere. Nunc scelerisque viverra mauris in. Amet risus nullam eget felis eget nunc lobortis mattis aliquam. Blandit volutpat maecenas volutpat blandit aliquam. Fermentum iaculis eu non diam.</p>\r\n\r\n<p>Image by <a href=\"https://pixabay.com/users/Eelffica-52436/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=756390\">Eelffica</a> from <a href=\"https://pixabay.com/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=756390\">Pixabay</a></p>\r\n\r\n<p>Id donec ultrices tincidunt arcu non sodales. Id ornare arcu odio ut sem. Velit sed ullamcorper morbi tincidunt ornare massa eget. Mi eget mauris pharetra et ultrices neque. Pellentesque dignissim enim sit amet venenatis. Pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus. Venenatis cras sed felis eget velit. Justo eget magna fermentum iaculis eu non diam phasellus vestibulum. Sollicitudin aliquam ultrices sagittis orci a scelerisque purus semper eget. Ultrices tincidunt arcu non sodales neque sodales ut. Integer malesuada nunc vel risus.</p>\r\n\r\n<p>Nunc sed id semper risus in hendrerit gravida. In cursus turpis massa tincidunt dui ut ornare lectus. Mattis rhoncus urna neque viverra justo nec ultrices dui. Ac tincidunt vitae semper quis lectus nulla at. Dui vivamus arcu felis bibendum ut. Ultricies tristique nulla aliquet enim tortor. Cras pulvinar mattis nunc sed blandit libero volutpat sed. Nisl nunc mi ipsum faucibus. Quis commodo odio aenean sed adipiscing. Tortor posuere ac ut consequat. Felis eget nunc lobortis mattis aliquam faucibus purus in. Aliquet lectus proin nibh nisl condimentum id venenatis a. Rhoncus mattis rhoncus urna neque viverra. Proin nibh nisl condimentum id. Dolor morbi non arcu risus.</p>', '', 0, 'Best things always come in pairs...', null, null);
INSERT INTO products_description VALUES (4, 1, 'Shiny Red Apples', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Turpis massa tincidunt dui ut ornare lectus sit amet est. Imperdiet proin fermentum leo vel orci porta. Cursus metus aliquam eleifend mi in nulla posuere. Nunc scelerisque viverra mauris in. Amet risus nullam eget felis eget nunc lobortis mattis aliquam. Blandit volutpat maecenas volutpat blandit aliquam. Fermentum iaculis eu non diam.</p>\r\n\r\n<p>Image by <a href=\"https://pixabay.com/users/Eelffica-52436/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=756390\">Eelffica</a> from <a href=\"https://pixabay.com/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=756390\">Pixabay</a></p>\r\n\r\n<p>Id donec ultrices tincidunt arcu non sodales. Id ornare arcu odio ut sem. Velit sed ullamcorper morbi tincidunt ornare massa eget. Mi eget mauris pharetra et ultrices neque. Pellentesque dignissim enim sit amet venenatis. Pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus. Venenatis cras sed felis eget velit. Justo eget magna fermentum iaculis eu non diam phasellus vestibulum. Sollicitudin aliquam ultrices sagittis orci a scelerisque purus semper eget. Ultrices tincidunt arcu non sodales neque sodales ut. Integer malesuada nunc vel risus.</p>\r\n\r\n<p>Nunc sed id semper risus in hendrerit gravida. In cursus turpis massa tincidunt dui ut ornare lectus. Mattis rhoncus urna neque viverra justo nec ultrices dui. Ac tincidunt vitae semper quis lectus nulla at. Dui vivamus arcu felis bibendum ut. Ultricies tristique nulla aliquet enim tortor. Cras pulvinar mattis nunc sed blandit libero volutpat sed. Nisl nunc mi ipsum faucibus. Quis commodo odio aenean sed adipiscing. Tortor posuere ac ut consequat. Felis eget nunc lobortis mattis aliquam faucibus purus in. Aliquet lectus proin nibh nisl condimentum id venenatis a. Rhoncus mattis rhoncus urna neque viverra. Proin nibh nisl condimentum id. Dolor morbi non arcu risus.</p>', '', 0, 'An apple a day keeps the doc away...', null, null);
INSERT INTO products_description VALUES (5, 1, 'Tomatoes', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Turpis massa tincidunt dui ut ornare lectus sit amet est. Imperdiet proin fermentum leo vel orci porta. Cursus metus aliquam eleifend mi in nulla posuere. Nunc scelerisque viverra mauris in. Amet risus nullam eget felis eget nunc lobortis mattis aliquam. Blandit volutpat maecenas volutpat blandit aliquam. Fermentum iaculis eu non diam.</p>\r\n\r\n<p>Image by <a href=\"https://pixabay.com/users/Rocky_H-11790006/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=4035459\">Rocky_H</a> from <a href=\"https://pixabay.com/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=4035459\">Pixabay</a></p>\r\n\r\n<p>Id donec ultrices tincidunt arcu non sodales. Id ornare arcu odio ut sem. Velit sed ullamcorper morbi tincidunt ornare massa eget. Mi eget mauris pharetra et ultrices neque. Pellentesque dignissim enim sit amet venenatis. Pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus. Venenatis cras sed felis eget velit. Justo eget magna fermentum iaculis eu non diam phasellus vestibulum. Sollicitudin aliquam ultrices sagittis orci a scelerisque purus semper eget. Ultrices tincidunt arcu non sodales neque sodales ut. Integer malesuada nunc vel risus.</p>\r\n\r\n<p>Nunc sed id semper risus in hendrerit gravida. In cursus turpis massa tincidunt dui ut ornare lectus. Mattis rhoncus urna neque viverra justo nec ultrices dui. Ac tincidunt vitae semper quis lectus nulla at. Dui vivamus arcu felis bibendum ut. Ultricies tristique nulla aliquet enim tortor. Cras pulvinar mattis nunc sed blandit libero volutpat sed. Nisl nunc mi ipsum faucibus. Quis commodo odio aenean sed adipiscing. Tortor posuere ac ut consequat. Felis eget nunc lobortis mattis aliquam faucibus purus in. Aliquet lectus proin nibh nisl condimentum id venenatis a. Rhoncus mattis rhoncus urna neque viverra. Proin nibh nisl condimentum id. Dolor morbi non arcu risus.</p>', '', 0, null, null, null);
INSERT INTO products_description VALUES (6, 1, 'Green Tomatoes', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Turpis massa tincidunt dui ut ornare lectus sit amet est. Imperdiet proin fermentum leo vel orci porta. Cursus metus aliquam eleifend mi in nulla posuere. Nunc scelerisque viverra mauris in. Amet risus nullam eget felis eget nunc lobortis mattis aliquam. Blandit volutpat maecenas volutpat blandit aliquam. Fermentum iaculis eu non diam.</p>\r\n\r\n<p>Image by <a href=\"https://pixabay.com/users/Rocky_H-11790006/\">Rocky_H</a> from <a href=\"https://pixabay.com/\">Pixabay</a></p>\r\n\r\n<p>Id donec ultrices tincidunt arcu non sodales. Id ornare arcu odio ut sem. Velit sed ullamcorper morbi tincidunt ornare massa eget. Mi eget mauris pharetra et ultrices neque. Pellentesque dignissim enim sit amet venenatis. Pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus. Venenatis cras sed felis eget velit. Justo eget magna fermentum iaculis eu non diam phasellus vestibulum. Sollicitudin aliquam ultrices sagittis orci a scelerisque purus semper eget. Ultrices tincidunt arcu non sodales neque sodales ut. Integer malesuada nunc vel risus.</p>\r\n\r\n<p>Nunc sed id semper risus in hendrerit gravida. In cursus turpis massa tincidunt dui ut ornare lectus. Mattis rhoncus urna neque viverra justo nec ultrices dui. Ac tincidunt vitae semper quis lectus nulla at. Dui vivamus arcu felis bibendum ut. Ultricies tristique nulla aliquet enim tortor. Cras pulvinar mattis nunc sed blandit libero volutpat sed. Nisl nunc mi ipsum faucibus. Quis commodo odio aenean sed adipiscing. Tortor posuere ac ut consequat. Felis eget nunc lobortis mattis aliquam faucibus purus in. Aliquet lectus proin nibh nisl condimentum id venenatis a. Rhoncus mattis rhoncus urna neque viverra. Proin nibh nisl condimentum id. Dolor morbi non arcu risus.</p>', '', 0, NULL, NULL, NULL);
INSERT INTO products_description VALUES (7, 1, 'Green Apples', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Turpis massa tincidunt dui ut ornare lectus sit amet est. Imperdiet proin fermentum leo vel orci porta. Cursus metus aliquam eleifend mi in nulla posuere. Nunc scelerisque viverra mauris in. Amet risus nullam eget felis eget nunc lobortis mattis aliquam. Blandit volutpat maecenas volutpat blandit aliquam. Fermentum iaculis eu non diam.</p>\r\n\r\n<p>Image by <a href=\"https://pixabay.com/users/Eelffica-52436/\">Eelffica</a> from <a href=\"https://pixabay.com/\">Pixabay</a></p>\r\n\r\n<p>Id donec ultrices tincidunt arcu non sodales. Id ornare arcu odio ut sem. Velit sed ullamcorper morbi tincidunt ornare massa eget. Mi eget mauris pharetra et ultrices neque. Pellentesque dignissim enim sit amet venenatis. Pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus. Venenatis cras sed felis eget velit. Justo eget magna fermentum iaculis eu non diam phasellus vestibulum. Sollicitudin aliquam ultrices sagittis orci a scelerisque purus semper eget. Ultrices tincidunt arcu non sodales neque sodales ut. Integer malesuada nunc vel risus.</p>\r\n\r\n<p>Nunc sed id semper risus in hendrerit gravida. In cursus turpis massa tincidunt dui ut ornare lectus. Mattis rhoncus urna neque viverra justo nec ultrices dui. Ac tincidunt vitae semper quis lectus nulla at. Dui vivamus arcu felis bibendum ut. Ultricies tristique nulla aliquet enim tortor. Cras pulvinar mattis nunc sed blandit libero volutpat sed. Nisl nunc mi ipsum faucibus. Quis commodo odio aenean sed adipiscing. Tortor posuere ac ut consequat. Felis eget nunc lobortis mattis aliquam faucibus purus in. Aliquet lectus proin nibh nisl condimentum id venenatis a. Rhoncus mattis rhoncus urna neque viverra. Proin nibh nisl condimentum id. Dolor morbi non arcu risus.</p>', '', 0, 'Green apples, fresh and crisp with a fragrant flavour.', NULL, NULL);
INSERT INTO products_description VALUES (8, 1, 'Grapefruit', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Turpis massa tincidunt dui ut ornare lectus sit amet est. Imperdiet proin fermentum leo vel orci porta. Cursus metus aliquam eleifend mi in nulla posuere. Nunc scelerisque viverra mauris in. Amet risus nullam eget felis eget nunc lobortis mattis aliquam. Blandit volutpat maecenas volutpat blandit aliquam. Fermentum iaculis eu non diam.</p>\r\n\r\n<p>Image by <a href=\"https://pixabay.com/users/Eelffica-52436/\">Eelffica</a> from <a href=\"https://pixabay.com/\">Pixabay</a></p>\r\n\r\n<p>Id donec ultrices tincidunt arcu non sodales. Id ornare arcu odio ut sem. Velit sed ullamcorper morbi tincidunt ornare massa eget. Mi eget mauris pharetra et ultrices neque. Pellentesque dignissim enim sit amet venenatis. Pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus. Venenatis cras sed felis eget velit. Justo eget magna fermentum iaculis eu non diam phasellus vestibulum. Sollicitudin aliquam ultrices sagittis orci a scelerisque purus semper eget. Ultrices tincidunt arcu non sodales neque sodales ut. Integer malesuada nunc vel risus.</p>\r\n\r\n<p>Nunc sed id semper risus in hendrerit gravida. In cursus turpis massa tincidunt dui ut ornare lectus. Mattis rhoncus urna neque viverra justo nec ultrices dui. Ac tincidunt vitae semper quis lectus nulla at. Dui vivamus arcu felis bibendum ut. Ultricies tristique nulla aliquet enim tortor. Cras pulvinar mattis nunc sed blandit libero volutpat sed. Nisl nunc mi ipsum faucibus. Quis commodo odio aenean sed adipiscing. Tortor posuere ac ut consequat. Felis eget nunc lobortis mattis aliquam faucibus purus in. Aliquet lectus proin nibh nisl condimentum id venenatis a. Rhoncus mattis rhoncus urna neque viverra. Proin nibh nisl condimentum id. Dolor morbi non arcu risus.</p>', '', 0, 'Big and juicy grapefruit', NULL, NULL);
INSERT INTO products_description VALUES (9, 1, 'Lime', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Turpis massa tincidunt dui ut ornare lectus sit amet est. Imperdiet proin fermentum leo vel orci porta. Cursus metus aliquam eleifend mi in nulla posuere. Nunc scelerisque viverra mauris in. Amet risus nullam eget felis eget nunc lobortis mattis aliquam. Blandit volutpat maecenas volutpat blandit aliquam. Fermentum iaculis eu non diam.</p>\r\n\r\n<p>Image by <a href=\"https://pixabay.com/users/Eelffica-52436/\">Eelffica</a> from <a href=\"https://pixabay.com/\">Pixabay</a></p>\r\n\r\n<p>Id donec ultrices tincidunt arcu non sodales. Id ornare arcu odio ut sem. Velit sed ullamcorper morbi tincidunt ornare massa eget. Mi eget mauris pharetra et ultrices neque. Pellentesque dignissim enim sit amet venenatis. Pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus. Venenatis cras sed felis eget velit. Justo eget magna fermentum iaculis eu non diam phasellus vestibulum. Sollicitudin aliquam ultrices sagittis orci a scelerisque purus semper eget. Ultrices tincidunt arcu non sodales neque sodales ut. Integer malesuada nunc vel risus.</p>\r\n\r\n<p>Nunc sed id semper risus in hendrerit gravida. In cursus turpis massa tincidunt dui ut ornare lectus. Mattis rhoncus urna neque viverra justo nec ultrices dui. Ac tincidunt vitae semper quis lectus nulla at. Dui vivamus arcu felis bibendum ut. Ultricies tristique nulla aliquet enim tortor. Cras pulvinar mattis nunc sed blandit libero volutpat sed. Nisl nunc mi ipsum faucibus. Quis commodo odio aenean sed adipiscing. Tortor posuere ac ut consequat. Felis eget nunc lobortis mattis aliquam faucibus purus in. Aliquet lectus proin nibh nisl condimentum id venenatis a. Rhoncus mattis rhoncus urna neque viverra. Proin nibh nisl condimentum id. Dolor morbi non arcu risus.</p>', '', 0, 'Sharp and juicy, add a twist', NULL, NULL);

INSERT INTO products_attributes VALUES (1, 4, 1, 1, '0.0000', '+');
INSERT INTO products_attributes VALUES (2, 4, 1, 2, '5.0000', '+');
INSERT INTO products_attributes VALUES (3, 2, 1, 1, '0.0000', '+');
INSERT INTO products_attributes VALUES (4, 2, 1, 2, '4.5000', '+');
INSERT INTO products_attributes VALUES (5, 5, 1, 1, '0.0000', '+');
INSERT INTO products_attributes VALUES (6, 5, 1, 2, '4.9900', '+');
INSERT INTO products_attributes VALUES (7, 7, 2, 3, '0.0000', '+');

INSERT INTO products_attributes_download VALUES (7, 'apple-pie.zip', 7, 5);

INSERT INTO products_images VALUES (1, 2, 'sample/lemons-2.webp', '', 1);

INSERT INTO products_options VALUES (1, 1, 'Box Size', 10);
INSERT INTO products_options VALUES (2, 1, 'Download', 10);

INSERT INTO products_options_values VALUES (1, 1, '12', 10);
INSERT INTO products_options_values VALUES (2, 1, '24', 20);
INSERT INTO products_options_values VALUES (3, 1, 'apple-pie.zip', 10);


INSERT INTO products_options_values_to_products_options VALUES (1, 1, 1);
INSERT INTO products_options_values_to_products_options VALUES (2, 1, 2);
INSERT INTO products_options_values_to_products_options VALUES (3, 2, 3);

INSERT INTO products_to_categories VALUES (1, 4);
INSERT INTO products_to_categories VALUES (2, 4);
INSERT INTO products_to_categories VALUES (3, 3);
INSERT INTO products_to_categories VALUES (4, 3);
INSERT INTO products_to_categories VALUES (5, 2);
INSERT INTO products_to_categories VALUES (6, 2);
INSERT INTO products_to_categories VALUES (7, 3);
INSERT INTO products_to_categories VALUES (8, 4);
INSERT INTO products_to_categories VALUES (9, 4);

INSERT INTO reviews VALUES (1, 4, 0, 'John Doe', 5, NOW(), NULL, 1, 0, 'n');
INSERT INTO reviews_description VALUES (1, 1, 'Lovely box of crunchy apples and delivered very quickly.  Thank You!');

INSERT INTO testimonials VALUES (1, 0, 'John Doe', NOW(), NULL, 1, 'n');
INSERT INTO testimonials_description VALUES (1, 1, 'Amazing service! The products arrived quickly and exceeded my expectations. Will definitely shop here again!');

INSERT INTO specials VALUES (1, 1, '2.9900', now(), null, null, null, '1');
