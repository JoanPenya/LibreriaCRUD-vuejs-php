<template>
    <div id="post" class="flex flex-wrap justify-center w-12/12">
        <div class="w-4/12 my-12">
            <img v-bind:src="$route.params.img" v-bind:alt="$route.params.name">
        </div>
        <div class="w-6/12 text-left">
            <h1 class="text-3xl my-2">{{$route.params.titulo}}</h1>
            <h1 class="my-2">Autor/a: {{$route.params.autor}}</h1>
            <h1 class="my-2">Editorial: {{$route.params.editorial}}</h1>
            <h1 class="my-2">Genero: {{$route.params.genero}}</h1>
            <h1 class="my-2">ISBN: {{$route.params.isbn}}</h1>
            <p class="">Descripción:</p>
            <p>{{$route.params.descripcion}}</p>
        </div>
    </div>
    <div class="my-16">
        <a href="/list" class="ml-4 bg-red-600 py-3 px-3 text-white rounded-lg">volver</a>
    </div>
</template>

<script>
</script>

<style>
</style>