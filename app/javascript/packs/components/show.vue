<template>
  <v-app>
      <br><br>
    <p>Index</p>
    
    <p>{{task.name}}</p>
     <p>nklsnskjlandkjankjbnxsa,.jcbnjskabdjksabdjklsabdjksabdkjlqw</p>
    　<router-link to="/">戻る</router-link>

  <button v-on:click="show" class="button">編集</button>
  <modal name="hello-world" :draggable="true" :resizable="true">
    <div class="modal-header">
      <h2>編集</h2>
    </div>
    <div class="modal-body">
    <b-form-input v-model="putTask" type="text" class="putinput" size="20"></b-form-input>
    <v-btn @click='updateTask(task.id)'>更新</v-btn>
      <button v-on:click="hide">閉じる</button>
    </div>  
  </modal>

    　
    　
  </v-app>
</template>


<script>
   import axios from 'axios';
   export default {
     data: function () {
       return {
         id: this.$route.params.taskId,
         task: [],
         task: {
             id: '',
             name: ''
         },
         putTask: ''
       }
     },
    created: function(){
        this.fetchTasks(this.id);
    },
    methods: {
        fetchTasks(id) {
                axios.get('/api/tasks/' + id ).then(response => {
                this.task = response.data
            });
        },
         updateTask(id) {
             axios.put('/api/tasks/' + id , {task: {name: this.putTask}}).then(response => {
                this.putTask = '';
                this.$modal.hide('hello-world');
                axios.get('/api/tasks/' + id ).then(response => {
                this.task = response.data
                });
             });
         },
        show() {
            this.$modal.show('hello-world');
        },
        hide() {
            this.$modal.hide('hello-world');
        },
    }
   }
</script>