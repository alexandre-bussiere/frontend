<template>
  <div>
    <h2>Car List</h2>
    <!-- Liste des voitures -->
    <ul v-if="cars.length">
      <li v-for="car in cars" :key="car.plateNumber">
        Plate: {{ car.plateNumber }}, Brand: {{ car.brand }}, Price: {{ car.price }}
      </li>
    </ul>
    <p v-else>No cars available</p>

    <!-- Bouton pour recharger les voitures -->
    <button @click="fetchCars">Reload Car List</button>
  </div>
</template>

<script>
export default {
  data() {
    return {
      cars: []
    };
  },
  created() {
    this.fetchCars();  // Charger les voitures lorsque le composant est créé
  },
  methods: {
    fetchCars() {
      fetch('http://localhost:8181/cars')
        .then(response => response.json())
        .then(data => {
          console.log('Cars fetched:', data);
          this.cars = data;
        })
        .catch(error => console.error('Error fetching cars:', error));
    }
  }
};
</script>

<style scoped>
h2 {
  color: #2c3e50;
}

button {
  margin-top: 20px;
  padding: 10px 20px;
  background-color: #3498db;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

button:hover {
  background-color: #2980b9;
}
</style>
