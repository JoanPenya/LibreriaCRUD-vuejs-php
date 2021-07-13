<template>
    <div class="flex flex-wrap justify-center">
        <table class="w-12/12">
            
            <section v-if="errored">
                <h3 class="text-2xl">Lo sentimos, no es posible obtener la información en este momento.</h3>
                <div class="flex flex-wrap justify-center my-6">
                    <img src="https://i.gifer.com/XZN.gif" alt="error" width="500">
                </div>
            </section>
    
            <section v-else>

                <tr class="flex flex-wrap justify-center">
                    <th class="pr-10">ID</th>
                    <th class="pr-10">Titulo</th>
                    <th class="pr-10">Autor</th>
                    <th class="pr-10">Editorial</th>
                    <th class="pr-10">información</th>
                    <th class="pr-10">Editar</th>
                    <th class="pr-10">Eliminar</th>
                </tr>

                <div v-if="loading">
                    cargando...
                </div>
    
                <div
                v-else
                v-for="currency in info"
                :key="currency"
                >

                
                <tr class="my-4 flex flex-wrap justify-center">
                    <td class="pr-10">{{currency.ID}}</td>
                    <td class="pr-10  overflow-hidden">{{currency.titulo}}</td>
                    <td class="pr-10">{{currency.autor}}</td>
                    <td class="pr-10">{{currency.editorial}}</td>
                    <td class="pr-10"><router-link class="bg-green-400 py-2 px-2 rounded-lg" :to="{name: 'view', params: {id: currency.ID, titulo: currency.titulo, img: currency.imagen, autor: currency.autor, editorial: currency.editorial, genero: currency.genero, isbn: currency.isbn, descripcion: currency.descripcion}}">Información</router-link></td>
                    <td class="pr-10"><router-link class="bg-blue-400 py-2 px-2 rounded-lg" :to="{name: 'edit', params: {id: currency.ID, titulo: currency.titulo, img: currency.imagen, autor: currency.autor, editorial: currency.editorial, genero: currency.genero, isbn: currency.isbn, descripcion: currency.descripcion}}">Editar</router-link></td>
                    <td class="pr-10"><a class="bg-red-400 py-2 px-2 rounded-lg" v-bind:href="'https://localhost/html/biblioteca-backend/delete.php?id=' + currency.ID">Eliminar</a></td>
                </tr>
                </div>
    
            </section>
        </table>
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