export default {
    props: ['currentuser'],

    template: `
    <div class="container-fluid">





        <div class="row" v-if="activeMediaType == 'video' && retrievedMedia.length > 0">

          <div class="media-bg"><h2 class="media-title">{{currentMediaDetails.movies_title}}</h2></div>

                <iframe id="ytplayer" type="text/html" width="100%" height="600px"
              :src="currentMediaDetails.movies_trailer"
              frameborder="0"></iframe>


        </div>

        <div class="row" v-if="activeMediaType == 'television' && retrievedMedia.length > 0">

              <h2 class="media-title">{{currentMediaDetails.tv_title}}</h2>


            <iframe id="ytplayer" type="text/html" width="100%" height="600px"
    :src="currentMediaDetails.tv_src"
    frameborder="0"></iframe>

        </div>







        <div class="row" v-if="activeMediaType == 'audio' && retrievedMedia.length > 0">
            <div class="col-12 order-2 order-md-1 col-md-6 media-container">
                <h2 class="media-title">{{currentMediaDetails.audio_title}}</h2>

            </div>
            <div class="col-12 order-1 order-md-2 col-md-6 audio-wrapper">
                <audio autoplay controls :src="'audio/' + currentMediaDetails.audio_src"/>

            </div>
        </div>

      <div class="row"><div v-for="media in mediaTypes" :data-type="media.description" @click="loadMedia(null, media.description)" class="cat-heading" ><hr>
            <h1>
              &nbsp &nbsp  <i v-bind:class="[media.iconClass]"></i>
            </h1>
            <h2>&nbsp {{ media.description }}&nbsp &nbsp</h2><hr>
        </div></div>


                    <ul class="media-genres" v-if="activeMediaType == 'video'" >
                        <li>
                            <a href="1950" @click.prevent="loadMedia('1950', 'video')">50s</a>
                        </li>
                        <li>
                            <a href="1960" @click.prevent="loadMedia('1960', 'video')">60s</a>
                        </li>
                        <li>
                            <a href="1970" @click.prevent="loadMedia('1970', 'video')">70s</a>
                        </li>
                        <li>
                            <a href="1980" @click.prevent="loadMedia('1980', 'video')">80s</a>
                        </li>
                        <li>
                            <a href="1990" @click.prevent="loadMedia('1990', 'video')">90s</a>
                        </li>
                        <li>
                            <a href="all" @click.prevent="loadMedia(null, null)">All Decades</a>
                        </li>
                    </ul>
                    <ul v-else-if="activeMediaType == 'television'" class="media-genres" >
                        <li>
                            <a href="1950" @click.prevent="loadMedia('1950', 'television')">50s</a>
                        </li>
                        <li>
                            <a href="1960" @click.prevent="loadMedia('1960', 'television')">60s</a>
                        </li>
                        <li>
                            <a href="1970" @click.prevent="loadMedia('1970', 'television')">70s</a>
                        </li>
                        <li>
                            <a href="1980" @click.prevent="loadMedia('1980', 'television')">80s</a>
                        </li>
                        <li>
                            <a href="1990" @click.prevent="loadMedia('1990', 'television')">90s</a>
                        </li>
                        <li>
                            <a href="all" @click.prevent="loadMedia(null, null)">All Decades</a>
                        </li>
                    </ul>
                    <ul v-else class="media-genres">
                        <li>
                            <a href="1950" @click.prevent="loadMedia('1950', 'audio')">50s</a>
                        </li>
                        <li>
                            <a href="1960" @click.prevent="loadMedia('1960', 'audio')">60s</a>
                        </li>
                        <li>
                            <a href="1970" @click.prevent="loadMedia('1970', 'audio')">70s</a>
                        </li>
                        <li>
                            <a href="1980" @click.prevent="loadMedia('1980', 'audio')">80s</a>
                        </li>
                        <li>
                            <a href="1990" @click.prevent="loadMedia('1990', 'audio')">90s</a>
                        </li>
                        <li>
                            <a href="all" @click.prevent="loadMedia(null, null)">All Decades</a>
                        </li>
                    </ul>
                <div class="thumb-wrapper clearfix">
                    <img v-if="activeMediaType == 'video'" v-for="media in retrievedMedia" :src="'images/video/' + media.movies_cover" alt="media thumb" @click="switchActiveMedia(media)" class="img-thumbnail rounded float-left media-thumb">
                    <img v-if="activeMediaType == 'audio'" v-for="media in retrievedMedia" :src="'images/audio/' + media.audio_cover" alt="media thumb" @click="switchActiveMedia(media)" class="img-thumbnail rounded float-left media-thumb audio-thumb">
                    <img v-if="activeMediaType == 'television'" v-for="media in retrievedMedia" :src="'images/tv/' + media.tv_cover" alt="media thumb" @click="switchActiveMedia(media)" class="img-thumbnail rounded float-left media-thumb">
                </div>
            </div>
        </div>
    </div>
    `,

    data() {
        return {

            activeMediaType: "video",
            currentMediaDetails: {
                source: [],
            },

            // icons
            mediaTypes: [
                { iconClass: "fas fa-volume-up", description: "audio" },
                { iconClass: "fas fa-ticket-alt", description: "video" },
                { iconClass: "fas fa-tv", description: "television" }
            ],

            retrievedMedia: [],

            //mute / unmute
            vidActive: false,
            eraFilters: [

                {name: "1950", click: "1950"},
                {name: "1960", click: "1960"},
                {name: "1970", click: "1970"},
                {name: "1980", click: "1980"},
                {name: "1990", click: "1990"},
                {name: "All", click: "null"},
            ]
        }
    },

    created: function() {
        console.log('params:', this.$route.params);

        this.loadMedia(null, "video");
    },

    methods: {

        loadMedia(filter, mediaType) {
            debugger;
            if (this.activeMediaType !== mediaType && mediaType !== null) {
                this.activeMediaType = mediaType;
            }
            let url = (filter == null) ? `./admin/index.php?media=${this.activeMediaType}` : `./admin/index.php?media=${mediaType}&&filter=${filter}`;

            fetch(url)
                .then(res => res.json())
                .then(data => {
                    this.retrievedMedia = data;
                    this.currentMediaDetails = data[0]; //make first one active
                })
            .catch(function(error) {
                console.error(error);
            });
        },

        switchActiveMedia(media) {
            console.log(media);

            this.currentMediaDetails = media;
        }
    }
}
