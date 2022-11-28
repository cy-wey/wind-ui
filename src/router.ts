import SwitchDemo from './components/SwitchDemo.vue'
import ButtonDemo from './components/ButtonDemo.vue'
import DialogDemo from './components/DialogDemo.vue'
import TabsDemo from './components/TabsDemo.vue'
import DocDemo from './components/DocDemo.vue'
import {createWebHashHistory, createRouter} from 'vue-router'
import Home from './view/Home.vue'
import Doc from './view/Doc.vue'
const history = createWebHashHistory()

export const router = createRouter({
  history: history,
  routes : [
    {
      path:'/', component: Home
    },
    {path: '/doc',
      component: Doc,
      children: [
        {path: '', component: DocDemo},
        {path: 'switch', component: SwitchDemo},
        {path: 'button', component: ButtonDemo},
        {path: 'dialog', component: DialogDemo},
        {path: 'tabs', component: TabsDemo}
      ]
    }
  ]
})