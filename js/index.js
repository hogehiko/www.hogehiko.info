var app = new Vue({ 
    el: '#app',
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
});
