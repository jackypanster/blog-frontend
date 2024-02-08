<script>
import axios from 'axios'

export default {
  data() {
    return {
      blogs: []
    }
  },
  created() {
    this.fetchBlogs()
  },
  methods: {
    fetchBlogs() {
      axios.get('/blogs')
        .then(response => {
          this.blogs = response.data
        })
    },
    addBlog(blog) {
      axios.post('/blogs', blog)
        .then(() => {
          this.fetchBlogs() // 重新加载博客
        })
    }
  }
}
</script>
