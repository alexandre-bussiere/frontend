<template>
  <div id="app">
    <h1>Car Management</h1>
    <div class="container">
      <div class="left">
        <DisplayData />
      </div>
      <div class="right">
        <FormHandler />
      </div>
    </div>
    <Footer />
  </div>
</template>

<script>
import DisplayData from './components/DisplayData.vue';
import FormHandler from './components/FormHandler.vue';
import Footer from './components/AppFooter.vue';

export default {
  name: 'App',
  components: {
    DisplayData,
    FormHandler,
    Footer
  }
};
</script>

<style scoped>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  text-align: center;
  margin-top: 40px;
  padding-bottom: 60px; /* espace pour le footer */
}

.container {
  display: flex;
  justify-content: space-between;
  padding: 20px;
}

.left {
  flex: 1;
  margin-right: 20px;
  border-right: 2px solid #ccc;
}

.right {
  flex: 1;
  margin-left: 20px;
}

/* Style des formulaires */
form {
  margin-bottom: 20px;
}
label {
  display: block;
  margin-bottom: 5px;
}
input {
  margin-bottom: 10px;
  padding: 5px;
  width: 100%;
}
button {
  padding: 10px;
  background-color: #42b983;
  color: white;
  border: none;
  cursor: pointer;
  width: 100%;
}
button:hover {
  background-color: #369773;
}
</style>
