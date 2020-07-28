<template>
  <div class="container-fluid">
    <h1 class="vue">{{ msg }}</h1>
      <div class="col-sm-8 offset-sm-2 pt-4">
        <div class="alert alert-danger" role="alert" v-if="error">
            {{ error }}
        </div>
        <div class="alert alert-danger" role="alert" v-if="timezone.message">
          {{ timezone.message }}
        </div>
        <div class="card shadow-lg">
          <div class="card-body">
            <label for="timezones" class="float-left"></label>
            <select id="timezones"  class="form-control" v-model="selected">
              <option disabled value>Please select one</option>
              <option v-for="timezone in timezones" v-bind:key="timezone.id" v-bind:value="timezone.id">{{ timezone.name }} {{ '(' + timezone.timezone +')' }}</option>
            </select>
            <div class="form-group col-sm-12 pt-4">
              <a href="#" class="btn btn-vue btn-block rounded-pill" v-on:click=displayTime()>Submit</a>
            </div>
            <div class="col-sm-12 pt-2">
              <h3 class="float-left pb-5 vue" v-if="timezone.currentTime">{{ timezone.name}} {{ '(' + timezone.timezone +')'}}: {{ timezone.currentTime }}</h3>
            </div>
          </div>
        </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "Timezones",
  props: {
    msg: String
  },
  data() {
    return {
      baseUrl: 'http://localhost:5001/api/',
      selected: '',
      timezones: [],
      timezone: [],
      error:''
    }
  },
  mounted() {
    this.error = ''; 
    axios.get(this.baseUrl + 'timezones/').then(
       response => this.timezones = response.data['data']).
       catch(error => this.error = error);
  },
  methods: {
    displayTime: function(){
    this.error = '';  
    axios.get(this.baseUrl + 'timezones/'+ this.selected).then(
       response => this.timezone = response.data['data']).
       catch(error => this.error = error);
    }
  }
};



</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.btn-vue{
  background-color: #4FC08D;
  color: white
}
.btn-vue:hover{
  color: white
}
.vue{
  color: #4FC08D;
}
.card{
  background-color:#F7FAFC;
}
</style>
