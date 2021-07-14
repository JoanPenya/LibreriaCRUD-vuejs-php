<template>
    <h1 class="text-5xl">
        Añadir libro
    </h1>

    <form action="http://localhost:80/biblioteca-backend/add.php" class="" method="post">
        <div class="max-w-full">
            <div class="my-4 ml-complete w-3/12 flex">
                <div class="text-left">
                    <label for="title">Titulo</label>
                </div>
                <div class="ml-auto">
                    <input type="text" class="border-2 " name="title" id="title">
                </div>
            </div>
            <div class="my-4 ml-complete w-3/12 flex"> 
                <div class="text-left">
                    <label for="img">Imagen</label>
                </div>

                <div class="ml-auto">
                    <input type="text" class="border-2" name="img" id="img">
                </div>
            </div>
            <div class="my-4 ml-complete w-3/12 flex">
                <div class="text-left">
                    <label for="author">Autor</label>
                </div>

                <div class="ml-auto">
                    <input type="text" class="border-2" name="author" id="author">
                </div>
            </div>
            <div class="my-4 ml-complete w-3/12 flex">
                <div class="text-left">
                    <label for="genre">Genero</label>
                </div>

                <div class="ml-auto">
                    <input type="text" class="border-2" name="genre" id="genre">
                </div>
            </div>
            <div class="my-4 ml-complete w-3/12 flex">
                <div class="text-left">
                    <label for="editorial">Editorial</label>
                </div>

                <div class="ml-auto">
                    <input type="text" class="border-2" name="editorial" id="editorial">
                </div>
            </div>
            <div class="my-4 ml-complete w-3/12 flex">
                <div class="text-left">
                    <label for="isbn">ISBN</label>
                </div>

                <div class="ml-auto">
                    <input type="text" class="border-2" name="isbn" id="isbn">
                </div>
            </div>

            <div class="my-4 ml-complete text-left w-3/12">
                <div class="">
                    <label for="description">Descripción</label>
                </div>
                <div class="">
                    <textarea class="border-2 resize-none" cols="29" rows="5" name="description" id="description"></textarea>
                </div>
            </div>
        </div>
        <button class="bg-blue-600 py-2 px-2 text-white rounded-lg">Insertar</button>
        <a href="/" class="ml-4 bg-red-600 py-3 px-3 text-white rounded-lg">volver</a>
    </form>
</template>

<script>
</script>

<style>
    
</style>