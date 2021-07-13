<template>
  <div class="text-center text-5xl">
    <h1>Librería nacional de España</h1>
  </div>

  <div class="my-24 ">
    <ul class="flex flex-wrap justify-center">
      <li class="mx-4">
        <a href="/add">
          <img src="https://iconarchive.com/download/i42578/oxygen-icons.org/oxygen/Actions-address-book-new.ico" alt="add" width="250px">
          <p>Añadir libro</p>
        </a> 
      </li>
      <li class="mx-4">
        <a href="/list">
          <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/List-Icon.svg/1024px-List-Icon.svg.png" alt="list" width="250px">
          <p>Listado de libros</p>
        </a>  
      </li>
    </ul>
  </div>
  
    <footer class="bg-green-400 py-4">
      <p>Librería nacional de españa - &COPY; 2021</p>
    </footer>
</template>

<script setup>
import { defineProps, reactive } from 'vue'

defineProps({
  
})

const state = reactive({ count: 0 })
</script>

<style scoped>
a {
  color: #42b983;
}
</style>
