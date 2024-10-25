<template>
  <footer class="footer">
    <p>© 2024 - Car Management App. All rights reserved.</p>
    <p>Developed by </p>
    <p>Alexandre Bussiere, Louis Godfrin, Billy Romain, Amir Djelidi, Clément Tauziède</p>
  </footer>
</template>

<script>
export default {
  name: "AppFooter", // Nom multi-mot
};
</script>

<style scoped>
.footer {
  text-align: center;
  padding: 20px;
  background-color: #f5f5f5;
  border-top: 2px solid #ccc;
  position: fixed;
  bottom: 0;
  width: 100%;
}

.footer p {
  margin: 0;
  color: #333;
}
</style>
