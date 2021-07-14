import { createRouter, createWebHistory } from 'vue-router'
import Home from '/src/components/Home.vue'
import add from '/src/components/add.vue'
import list from '/src/components/list.vue'
import view from '/src/components/view.vue'
import edit from '/src/components/edit.vue'


const routes = [
    {
        path: '/',
        name: 'Home',
        component: Home,
    },
    {
        path: '/add',
        name: 'add',
        component: add,
    },
    {
        path: '/list',
        name: 'list',
        component: list,
    },
    {
        path: '/view/:id?',
        name: 'view',
        component: view,
    },
    {
        path: '/edit/:id?',
        name: 'edit',
        component: edit,
    },
]

const router = createRouter({
    history: createWebHistory(),
    routes,
})

export default router