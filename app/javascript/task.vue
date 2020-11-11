<template>
    <div>
    <label for="">新規作成</label>
    <v-text-field v-model="newTask" type="text" name="" class="postinput"/>
    <button @click='createTask'>作成</button>
    <ul class="collection">
        <li v-for="task in tasks">
             <router-link :to="{name: 'task', params: {taskId: task.id}}" v-bind:for="'task_' + task.id">{{task.name}}</router-link>
             <br>
             <v-btn @click='deleteTask(task.id)'>削除</v-btn>
             <v-btn @click='updateTask(task.id)'>更新</v-btn>
             <b-form-input v-model="putTask" type="text" class="putinput" size="20"></b-form-input>
        </li>
    </ul>
    </div>
</template>

<script>
   import axios from 'axios';
    axios.defaults.headers.common = {
        'X-Requested-With': 'XMLHttpRequest',
        'X-CSRF-TOKEN' : document.querySelector('meta[name="csrf-token"]').getAttribute('content')
    };
   export default {
     data: function () {
       return {
        //  form1: "<input v-model='putTask' type='text' />",
         task: [],
         tasks: [],
         task: {
             id: '',
             name: ''
         },
         newTask: '',
         putTask: ''
       }
     },
     created: function(){
         this.fetchTasks();
     },
     methods: {
         fetchTasks() {
                axios.get('/api/tasks').then(response => {
                this.tasks = response.data.tasks
             });
         },
         createTask(){
             axios.post('/api/tasks', {task: {name: this.newTask}}).then(response => {
                this.newTask = '';
                axios.get('/api/tasks').then(response => {
                this.tasks = response.data.tasks
                });
            });
        },
         updateTask(id) {
             axios.put('/api/tasks/' + id , {task: {name: this.putTask}}).then(response => {
                this.putTask = '';
                axios.get('/api/tasks').then(response => {
                this.tasks = response.data.tasks
                });
             });
         },
         deleteTask(id) {
            axios.delete('/api/tasks/' + id ).then(response => {
                axios.get('/api/tasks').then(response => {
                this.tasks = response.data.tasks
                });
            });
        }
    }
   }
</script>


<style scoped>
.putinput{
    width: 120px; 
}

.postinput{
    width: 120px;
}
</style>