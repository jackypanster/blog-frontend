<template>
    <div>
      <h1>博客文章</h1>
      <ul>
        <li v-for="post in posts" :key="post.id">{{ post.title }}</li>
      </ul>
    </div>
  </template>
  
  <script>
  import axios from 'axios';
  
  export default {
    data() {
      return {
        posts: []
      };
    },
    mounted() {
      this.fetchPosts();
    },
    methods: {
      fetchPosts() {
        // 使用环境变量构建后端服务的 URL
        const backendUrl = process.env.VUE_APP_BACKEND_URL;
        axios.get(`${backendUrl}/blogs`)
          .then(response => {
            this.posts = response.data;
          })
          .catch(error => {
            console.error("获取博客文章失败：", error);
          });
      }
    }
  };
  </script>
  