<template>
  <div>
    <h2>Add or Remove a Car</h2>
    <form @submit.prevent="addCar">
      <div>
        <label for="plate">PlateNumber:</label>
        <input type="text" v-model="newCar.plateNumber" id="plateNumber" required />

        <label for="brand">Brand:</label>
        <input type="text" v-model="newCar.brand" id="brand" required />

        <label for="price">Price:</label>
        <input type="number" v-model="newCar.price" id="price" required />
      </div>
      <button type="submit">Add Car</button>
    </form>

    <form @submit.prevent="deleteCar">
      <div>
        <label for="deletePlate">Delete Car with Plate:</label>
        <input type="text" v-model="deletePlate" id="deletePlate" required />
      </div>
      <button type="submit">Delete Car</button>
    </form>
  </div>
</template>


<script>
export default {
  data() {
    return {
      newCar: {
        plateNumber: '',
        brand: '',
        price: null
      },
      deletePlate: '',
      message: '',
      messageClass: ''
    };
  },
  methods: {
    async addCar() {
      try {
        const response = await fetch('http://localhost:8181/add', {
          method: 'PUT',
          headers: {
            'Content-Type': 'application/json'
          },
          body: JSON.stringify(this.newCar)
        });

        if (response.ok) {
          this.message = 'Car added successfully!';
          this.messageClass = 'success';
          this.resetForm();
        } else {
          throw new Error('Failed to add car');
        }
      } catch (error) {
        this.message = error.message;
        this.messageClass = 'error';
      }
    },

    async deleteCar() {
      try {
        const response = await fetch(`http://localhost:8181/delete/${this.deletePlate}`, {
          method: 'DELETE'
        });

        if (response.ok) {
          this.message = 'Car deleted successfully!';
          this.messageClass = 'success';
          this.deletePlate = '';
        } else {
          throw new Error('Failed to delete car');
        }
      } catch (error) {
        this.message = error.message;
        this.messageClass = 'error';
      }
    },

    resetForm() {
      this.newCar.plateNumber = '';
      this.newCar.brand = '';
      this.newCar.price = null;
    }
  }
};
</script>


<style scoped>
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
}
button:hover {
  background-color: #369773;
}
</style>
