<template>
    <div id="post" class="flex flex-wrap justify-center w-10/12">
        <div class="">
            <img v-bind:src="$route.params.img" v-bind:alt="$route.params.name">
        </div>
        <div class="">
            <h1>{{$route.params.titulo}}</h1>
            <h1>Autor/a: {{$route.params.autor}}</h1>
            <h1>Editorial: {{$route.params.editorial}}</h1>
            <h1>Genero: {{$route.params.genero}}</h1>
            <h1>ISBN: {{$route.params.isbn}}</h1>
            <p>Descripción:</p>
            <p>{{$route.params.descripcion}}</p>
        </div>
    </div>
</template>

<script>
</script>

<style>
</style>