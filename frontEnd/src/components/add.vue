<template>
    <h1 class="text-5xl">
        Añadir libro
    </h1>

    <form action="http://localhost:80/biblioteca-backend/add.php" class="my-28" method="post">
        <div class="my-4">
            <label for="title">Titulo</label>
            <input type="text" class="border-2 " name="title" id="title">
        </div>
        <div class="my-4"> 
            <label for="img">Imagen</label>
            <input type="text" class="border-2" name="img" id="img">
        </div>
        <div class="my-4">
            <label for="author">Autor</label>
            <input type="text" class="border-2" name="author" id="author">
        </div>
        <div class="my-4">
            <label for="genre">Genero</label>
            <input type="text" class="border-2" name="genre" id="genre">
        </div>
        <div class="my-4">
            <label for="editorial">Editorial</label>
            <input type="text" class="border-2" name="editorial" id="editorial">
        </div>
        <div class="my-4">
            <label for="isbn">ISBN</label>
            <input type="text" class="border-2" name="isbn" id="isbn">
        </div>
        
        <div class="my-4">
            <label for="description">Descripción</label>
            <textarea class="border-2" name="description" id="description"></textarea>
        </div>
        <button class="bg-blue-600 py-2 px-2">Insertar</button>
    </form>

    <footer class="bg-green-400 py-4 ">
        <p>Librería nacional de españa - &COPY; 2021</p>
    </footer>
</template>

<script>

</script>

<style>
    
</style>