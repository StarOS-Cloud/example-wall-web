<template>
    <div id="app">
        <a-layout>
            <a-layout-header id="header">
                <span class="logo">
                    <img src="./assets/logo.png" height="32px"/>
                </span>
                <span id="header_title">评论系统</span>
            </a-layout-header>
            <Wall id="content" />
        </a-layout>
    </div>
</template>

<script>
import Wall from "./components/Wall";

export default {
    name: "App",
    components: {
        Wall,
    }
};
</script>

<style>
#header {
    background-color: #E9EFF4;
    height: 60px;
    
}

#header_title {
    margin: auto;
    margin-left: 10px;
    font-size: 18px;
    font-weight: 900;
    color: #333;
    font-family: sans-serif;
}

.logo {
    margin: 8px;
    vertical-align: middle;
}

.img{
    margin: 8px;
}

#app {
    font-family: Avenir, Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    background-color: white;
}
</style>
