# README
 # Respuestas que pide explicar el desafío.

# 6. En el modelo Application Record se crea un método para solo traer los productos que tengan stock y luego se aplica en el controllador de home/index. Es en esa vista que se declara que solo se traiga la primera variación con color, size, price y stock. 

# 7. En este punto solo se debe agregar la variación con el color, size y price al modelo OrderItem. 

# 8. Habría que crear un modelo Cupon que tenga su referencia en el modelo OrderItem. Solo en caso de que se use un cupón se llenaría ese campo, que por defecto es nil. 
# a. Si el cupón lo pueden usar muchas personas, sería una relación N a N y habría que crear una join table con user_id y cupon_id. 
# b. En el caso de los cupones para clientes únicos, se debe asociar el modelo cupón con el user a través de una FK (user_id). 


# 2. Para esto se debe agregar la columna 'category_id' a la tabla Categories, y crear una relación has_many consigo misma para las categorías hijo, y una belongs_to para la categoría padre. Agregamos los test unitarios. Listo.

# 3. Al hacer ajuste en la base de datos se debe modificar el catalogo para lograr esto. Se agrego un método en Application Record para obtener todos los productos que tengan stock. Este método se aplica en el controlador de home#index para así mostrar solo las variaciones que tengan stock. En el home#index se agrega una modificación para obtener desde la primera variación con stock, el color, talla y precio. Listo.

# 4. Gema ERD para esto. Listo.

# 5. Se crearon dos métodos en el modelo Category, uno para traer todos los nombres de categorías hijo y otro para traer el nombre de la categoría padre.

# 6. Se explica en punto 3.

# 7. Se debe agregar la variación con su color, talla y precio unitario a OrderItem para que se mantenga la funcionalidad.

# 8. Para crear ambos cupones se debe crear un modelo 'Cupón', y se debería agregar un campo en el modelo 'OrderItem' que haga referencia a un cupón si se ocupa, se llamaría cupon_id y por defecto sería un campo nil, en caso de utilizar un cupón se agregaría el id.
# También se debe validar con el cliente si una persona puede ocupar dos cupones al mismo tiempo o no.
# a) Para crear el cupón que pueden ocupar muchas personas se debe crear una relación N a N, suponiendo que muchas personas pueden ocupar muchos cupones. Por lo tanto, se debería hacer una tabla intermedia con user_id y cupon_id.
# b) Para los cupones que solo pueden ocupar clientes específicos, se debería crear un modelo cupón que incluya como FK el user_id