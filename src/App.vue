<template>
  <div id="app">
    <Timezones msg="Timezones" />
  </div>
</template>

<script>
import Timezones from "./components/Timezones.vue";

export default {
  name: "App",
  components: {
    Timezones
  }
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
