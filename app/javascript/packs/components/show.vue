<template>
  <div>
    <p>Index</p>
    
    <p>{{task.name}}</p>
     <p>nklsnskjlandkjankjbnxsa,.jcbnjskabdjksabdjklsabdjksabdkjlqw</p>
    　<router-link to="/">戻る</router-link>
  </div>
</template>


<script>
   import axios from 'axios';
   export default {
     data: function () {
       return {
         id: this.$route.params.taskId,
         task: []
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
    }
   }
</script>