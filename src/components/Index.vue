<template>
    <div class="root">
     <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <div class="container">
              <a class="navbar-brand" href="#">www.hogehiko.info</a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                  <li class="nav-item">
                    <a class="nav-link" href="https://twitter.com/hogehiko">Contact</a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
      
          <!-- Page Content -->
          <div class="container">
            <div class="row">

              <div v-bind:key="link.title" v-for="link in links" class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                  <a v-bind:href="link.href">
                    <img class="card-img-top" v-bind:src="link.img" alt=""></a>
                  <div class="card-body">
                    <h4 class="card-title">
                      <a :href="link.href">{{link.title}}</a>
                    </h4>
                    <p class="card-text">{{link.description}}</p>
                  </div>
                </div>
              </div>
            </div>
            <!-- /.row -->
      
          </div>
          <!-- /.container -->
      
          <!-- Footer -->
          <footer class="py-5 bg-light">
            <div class="container">
              <p class="m-0 text-center">Copyright &copy; hogehiko 2019</p>
            </div>
            <!-- /.container -->
          </footer>
      
    
    </div>
</template>


<script>
import axios from 'axios';
export default {
  data(){
      return {
          message: 'Hello Vue!',
          links: null 
      }
      
  },

  mounted(){
      console.log("axios");
      axios.get("/api/links.json")
      .then(response=> (this.links = response.data.items))

  }
}
</script>

<style>
.root {
  padding-top: 54px;
}

@media (min-width: 992px) {
  .root {
    padding-top: 56px;
  }
}

.portfolio-item {
  margin-bottom: 30px;
}

.pagination {
  margin-bottom: 30px;
}

</style>