<template>
    
    <div class="flex flex-wrap justify-center mb-6">
        <h1 class="text-4xl border-b-2 border-black">Listado de libros</h1>
    </div>

    <div class="flex flex-wrap justify-center">
        
            
            <section v-if="errored">
                <h3 class="text-2xl">Lo sentimos, no es posible obtener la información en este momento.</h3>
                <div class="flex flex-wrap justify-center my-6">
                    <img src="https://i.gifer.com/XZN.gif" alt="error" width="500">
                </div>
            </section>
    
            <section v-else>

                

                    

                    <table class="table-auto">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Titulo</th>
                                <th>Autor</th>
                                <th>Editorial</th>
                                <th>información</th>
                                <th>Editar</th>
                                <th>Eliminar</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr v-if="loading" class="my-4">
                                cargando...
                            </tr>
                            <tr v-else
                            v-for="currency in info"
                            :key="currency"
                            class="py-24">
                                <td class="px-8">{{currency.ID}}</td>
                                <td class="px-8 w-3/12 truncate">{{currency.titulo}}</td>
                                <td class="px-8">{{currency.autor}}</td>
                                <td class="px-8">{{currency.editorial}}</td>
                                <td class="px-8"><router-link class="bg-green-400 py-2 px-2 rounded-lg" :to="{name: 'view', params: {id: currency.ID, titulo: currency.titulo, img: currency.imagen, autor: currency.autor, editorial: currency.editorial, genero: currency.genero, isbn: currency.isbn, descripcion: currency.descripcion}}">Información</router-link></td>
                                <td class="px-8"><router-link class="bg-blue-400 py-2 px-2 rounded-lg" :to="{name: 'edit', params: {id: currency.ID, titulo: currency.titulo, img: currency.imagen, autor: currency.autor, editorial: currency.editorial, genero: currency.genero, isbn: currency.isbn, descripcion: currency.descripcion}}">Editar</router-link></td>
                                <td class="px-8"><a class="bg-red-400 py-2 px-2 rounded-lg" v-bind:href="'https://localhost/html/biblioteca-backend/delete.php?id=' + currency.ID">Eliminar</a></td>
                            </tr>
                        </tbody>

            </table>

            <!--
            <div class="my-4">
                <ul class="flex flex-wrap text-center">
                    <li>1</li>
                    <li>2</li>
                    <li>3</li>
                    <li>4</li>
                    <li>5</li>
                </ul>
            </div>
            -->
            </section>

    </div>
    <div class="text-left py-16">
        <a href="/" class="ml-4 bg-red-600 py-3 px-3 text-white rounded-lg">volver</a>
    </div>

    
</template>

<script>
import axios from 'axios';

export default {
    name: 'ajax',
    el: '#ajax',
    data () {
        return{
            info: null,
            loading: true,
            errored: false
        }
    },
    mounted () {
        axios
            .get('https://localhost/html/biblioteca-backend/view.php')
            .then(response => (this.info = response.data.libros))
            .catch(error => {
                console.log(error)
                this.errored = true
            })
            .finally(() => this.loading = false)
    }
}

</script>

<style>
    
</style>