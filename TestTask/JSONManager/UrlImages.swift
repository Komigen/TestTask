import Foundation

//MARK: т.к. доступ к image по ссылкам из файла jsonviewer закрыт, для демонстрации были выбраны другие:
    let urlImagesFirtsVC = [
        "https://img.freepik.com/free-photo/pizza-with-pepperoni-champignons-tomato-cheese-four-tastes-one-pizza-white-background-photo-menu_639032-259.jpg?w=1380&t=st=1666708169~exp=1666708769~hmac=1b13ce1eeb24977c9a8b70738832397651e8a134c3ca472e21865266d4677cba",
        "https://img.freepik.com/free-photo/delicious-high-protein-meal-composition_23-2149089651.jpg?w=1800&t=st=1666708177~exp=1666708777~hmac=9aa20c0147bbfed62d8ea7ff0663897d7970ae69f07b3b79169e44cd31a906da",
        "https://img.freepik.com/free-photo/top-view-spicy-chicken-with-lettuce-lemon-pan-table_181624-61795.jpg?w=2000&t=st=1666708183~exp=1666708783~hmac=8e4333c6e748455fdf1665fbb81621a45f570fbe0a2ee9d615a7ab93e3f5d184",
        "https://img.freepik.com/free-photo/stir-fry-chicken-sweet-peppers-green-beans_2829-20110.jpg?w=1800&t=st=1666708192~exp=1666708792~hmac=1d7abdbeb6e596df043076055dad0789333d0bf06e9644e91ecadf8665d54345",
        "https://img.freepik.com/free-photo/baked-chicken-wings-asian-style-tomatoes-sauce-plate_2829-10653.jpg?w=2000&t=st=1666708197~exp=1666708797~hmac=9034885c753a4c3d1d6a638e6a180b17f6a8daf3ba93937fbed55dda7038df0f",
        "https://img.freepik.com/free-photo/top-view-various-delicious-tasty-fresh-food-wooden-white-surface_181624-47132.jpg?w=1800&t=st=1666708232~exp=1666708832~hmac=8a00dfa117decdf496d147fa0ba457a8fe97a66b774bd08805be853a5437688e",
        "https://img.freepik.com/free-photo/high-angle-delicious-children-s-menu-plate_23-2149627828.jpg?w=1800&t=st=1666708237~exp=1666708837~hmac=b99506c647326598605dd7abd7fc01466a9dc8a3fe1a966e263172f5dcd2e8bf",
        "https://img.freepik.com/free-photo/closeup-shot-sinigang-na-lechon-kawali_181624-58678.jpg?w=1800&t=st=1666708246~exp=1666708846~hmac=5f5553e27bd7a5140009c902b7995481cca00961179564b4a9f9bc6590eb518a",
        "https://img.freepik.com/free-photo/top-view-fresh-pancakes-with-raspberries-sugar-powder-plate-table_181624-61061.jpg?w=1800&t=st=1666708256~exp=1666708856~hmac=d1d9a6a26a410c1986abb33cd883899df93d5c30afc85a02aa31b818ddc44b4b",
        "https://img.freepik.com/free-photo/top-view-shot-some-avocados-tomatoes-bread-cutting-board_181624-60131.jpg?w=1800&t=st=1666708270~exp=1666708870~hmac=c4a7be89c4941e64b0380b071892c83fc62623344d8fd38fee44089e400ce803"
    ]


let urlImagesSecondVC = [
"https://img.freepik.com/free-photo/top-view-shot-some-avocados-tomatoes-bread-cutting-board_181624-60131.jpg?w=1800&t=st=1666708270~exp=1666708870~hmac=c4a7be89c4941e64b0380b071892c83fc62623344d8fd38fee44089e400ce803",
"https://img.freepik.com/free-photo/healthy-green-vegetarian-buddha-bowl-lunch-with-eggs-rice-tomato-avocado-blue-cheese-table_2829-18801.jpg?w=1800&t=st=1666708140~exp=1666708740~hmac=1a66da7c1c7c836cbbfa0e6fe249450981b8dd3e7e8cdf4b160a6543e3be2048",
"https://img.freepik.com/free-photo/thai-food-mixed-spicy-white-pork-sausage-salad-yum-moo-yor_1150-38098.jpg?w=1800&t=st=1666708147~exp=1666708747~hmac=a067bc34af494ceb154b1551b401945f394d23eaa99be78b79b34e11aee65be7",
"https://img.freepik.com/free-photo/colorful-candies-jelly-marmalade-unhealthy-sweets_114579-18920.jpg?w=1800&t=st=1666708153~exp=1666708753~hmac=218350a0a6aed0d86587565c0c95375b797de2312b207961e76fd138c3ede6fd",
"https://img.freepik.com/free-photo/fried-fish-carp-fresh-vegetable-salad-wooden-table_2829-19923.jpg?w=1800&t=st=1666708734~exp=1666709334~hmac=432effd572df3d2664535a101d61b94905a783427a4879f1a9e1e1a09aeabca4",
"https://img.freepik.com/free-photo/healthy-hearty-salad-tuna-green-beans-tomatoes-eggs-potatoes-black-olives-close-up-bowl-table_2829-4485.jpg?w=1800&t=st=1666708740~exp=1666709340~hmac=355d1cfd6b192e258dacfedf98e9c21bf7a6bd11890013ae97d48e585d280384",
"https://img.freepik.com/free-photo/top-view-delicious-truffle-recipe_23-2149525128.jpg?w=1800&t=st=1666708750~exp=1666709350~hmac=04b14244f459e322070ddaf39a7ed6f227884079443ae035625a7996121990d1",
"https://img.freepik.com/free-photo/fresh-vegetables-salad_155003-853.jpg?w=1800&t=st=1666708755~exp=1666709355~hmac=dccc263583b2946c50d4b658cc960776288d1645f531415b40427eb8c9ef7559",
"https://img.freepik.com/free-photo/garlic-sauce-ingredients-isolated-white-background_185193-76813.jpg?w=1800&t=st=1666708767~exp=1666709367~hmac=e345186c231f2749f5da0dab34d606b5e391918dd6f77ec623ba2bb32e3b1851",
"https://img.freepik.com/free-photo/concept-japanese-cuisine-chuka-salad-close-up_185193-90786.jpg?w=1800&t=st=1666708774~exp=1666709374~hmac=dac22496f3d343f584391e914161da8b4159f4d3f27a9c62f1ea50dff5c72fb9"
]

let urlImagesThirdVC = [
"https://img.freepik.com/free-photo/concept-orthodox-christmas-food-kutya-space-text_185193-90009.jpg?w=996&t=st=1666708955~exp=1666709555~hmac=c53cf7540f365e9c2cb46851678a8edc5aa2491ac3a1f4f5d416a965e69c47b9",
"https://img.freepik.com/free-photo/cute-pink-donuts-top-view_23-2148506124.jpg?w=996&t=st=1666708961~exp=1666709561~hmac=6497bdc4d378afb3c0d3db6697973591fe3c2182e89db3da7f13a70fe8793dd3",
"https://img.freepik.com/free-photo/crepes-filled-with-cottage-cheese-breakfast_114579-85208.jpg?w=996&t=st=1666708965~exp=1666709565~hmac=f3104ee245ec41f4d13e8ee589b2c425413faf6fd1436ee7ea38630b881e0642",
"https://img.freepik.com/free-photo/carbohydrate-breakfast-pancakes-crepes-wafers_114579-38812.jpg?w=996&t=st=1666708971~exp=1666709571~hmac=a7dea0a7d9bb889725d44d2e738f84ab318ffc6d95d11ecda58b52cc85a092bf",
"https://img.freepik.com/free-photo/russian-snack-blinchik-with-meat-marinated-food_114579-4428.jpg?w=900&t=st=1666708975~exp=1666709575~hmac=4997a526addc5c2fca85764bd1dfe33e5f70a18b7eb53d956d7d61cb22a62658",
"https://img.freepik.com/free-photo/raw-beef-steaks-isolated-white-background_185193-72642.jpg?w=996&t=st=1666708981~exp=1666709581~hmac=b6ea94f6a43937997960839933ccd1fd2ad492c60754567d60dbaf659e62c3fd",
"https://img.freepik.com/premium-photo/soft-puff-pastries-with-chocolate-nut-filling-isolated-white_157927-20763.jpg?w=740",
"https://img.freepik.com/free-photo/pistachio-ice-cream-isolated-white-background_185193-87437.jpg?w=996&t=st=1666708991~exp=1666709591~hmac=1820efa3d6871b7878b8747b1535ffcce9674f5d0ba4f6916556e570dadb84d0",
"https://img.freepik.com/free-photo/borsch-with-garlic-spruce-branch-onion-round-plate_176474-2683.jpg?w=740&t=st=1666708996~exp=1666709596~hmac=8ead7782df79d233f4c8c8a751c89c00df6cf19fa3bda6a5fb82dd04a9e90c91",
"https://img.freepik.com/free-photo/cottage-cheese-pancakes_114579-6468.jpg?w=996&t=st=1666709009~exp=1666709609~hmac=60f07d70edb2597ad504079b9a97afe7c30f3728c0ef1fa87b012e9dc9937388"
]

let urlImagesFourthVC = [
"https://img.freepik.com/free-photo/top-view-hotpot-dishes_23-2149563757.jpg?w=996&t=st=1666709161~exp=1666709761~hmac=e333f39724c656649a3e6b1d35a83f8fb9829a7624be6cf330e6bc9074757f1f",
"https://img.freepik.com/free-photo/top-view-turron-dessert_23-2149514337.jpg?w=996&t=st=1666709166~exp=1666709766~hmac=5fca0aff128eb77f2d9790588ef96bf83a0789f4601aabc629af4efe5561db52",
"https://img.freepik.com/free-photo/side-view-delicious-pizza-with-tomatoes-greens-stained-white-surface_179666-34033.jpg?w=996&t=st=1666709173~exp=1666709773~hmac=ba2d00513ccf8f671bc89923ec2a822b89ef6b2f7e50f5301ae46bef34a8eae6",
"https://img.freepik.com/free-photo/pancake-restaurant-table_7939-2440.jpg?w=996&t=st=1666709183~exp=1666709783~hmac=da1712565e6c1edddbd7a763c0f6dbfcefda5b1513430e9a59937f1c6d56c2c1",
"https://img.freepik.com/free-photo/top-view-delicious-food-keyboard_23-2149182225.jpg?w=996&t=st=1666709188~exp=1666709788~hmac=c116da76ef22e29a8b354f7ab9e7b96b3e2b1bbb59fdc794cd161099b9d7b909",
"https://img.freepik.com/free-photo/russian-salad-table_140725-7654.jpg?w=740&t=st=1666709192~exp=1666709792~hmac=f887c51cd6129a6872e3d770431193f9693e955c4896c7f7ce206489d4c179a6",
"https://img.freepik.com/free-photo/salad-with-crab-sticks-eggs-corn-cucumber_114579-44475.jpg?w=996&t=st=1666709196~exp=1666709796~hmac=edd7b0d99b761276b7e5092f2ede8cb129bf1b93e1766ae1c6ce98bf2fe43fff",
"https://img.freepik.com/free-photo/pepperoni-pizza-with-mushrooms-table_140725-997.jpg?w=740&t=st=1666709202~exp=1666709802~hmac=be4d0f8367c45179b3ec7e8823df69b344f63c2f8aa6a977575ce2431533e2a1",
"https://img.freepik.com/free-photo/spaghetti-with-marinara-tomato-sauce-topped-with-parmesan-basil_53876-96867.jpg?w=740&t=st=1666709206~exp=1666709806~hmac=a1ab07082df6b4f9d84bac9f2700db752621a498f9e4bae23477231f197fd1be",
"https://img.freepik.com/free-photo/sushi-set-with-avocado-salmon-crab-sesame-seeds-soy-sauce_141793-17599.jpg?w=996&t=st=1666709218~exp=1666709818~hmac=3e57da286ef1c2dc88e4daaaf0eb80df61940c73e55c7d645e770fa7a9ae8c58"
]
