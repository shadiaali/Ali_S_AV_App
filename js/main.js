(()=> {
    const vm = new Vue({
        el: '#app',

        data: {
          mainmessage : "Welcome to Roku Flashback!",
            videodata : [],
            singlemoviedata : [],

            videotitle : "",
            videosource : "",
            videodescription : "",
            showDetails : false
        },

        created : function() {
        //get all of the movie data on a page load
           this.fetchMovieData(null);
       },

       methods: {

      fetchMovieData(movie) {
        url = movie ? `./includes/index.php?movie=${movie}` : './includes/index.php';
//this is a ternary statement (shorthand for if/else). left of the : is true, right is false

        fetch(url) // pass in the one or many queries
          .then(res => res.json())
          .then(data => {
            if (movie) {
              // getting one movie, so use the single array, store data in single result above
              console.log(data);
              this.singlemoviedata = data;
              //initial data grab store in the videodata array
            } else {
              // push all the video (or portfolio content) into the video array
              console.log(data);
              this.videodata = data;
            }
          })
          .catch(function (error) {
            console.log(error);
          });
      }

    }
  });

})();
