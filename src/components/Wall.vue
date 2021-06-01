<template>
    <a-layout-content class="wall-content">
                <a-list  class="wall_list" item-layout="vertical" :data-source="comments" size="large">
                    <a-list-item slot="renderItem" slot-scope="item">
                        <h3 > {{ item.title }} </h3>
                        <p class="comment_time"> {{ item.create_time }} </p>
                    </a-list-item>
                </a-list>
                <div class="input_area">
                    <div class="input_content">
                <a-input-search
                    placeholder="input search text"
                    size="large"
                    @search="commit"
                >
                    <a-button slot="enterButton"> 提交 </a-button>
                </a-input-search>
                    </div>
                </div>
    </a-layout-content>
</template>

<script>
let axios = require("axios");

export default {
    name: "Wall",
    data: () => ({ comments: [] }),
    methods: {
        refresh: function () {
            axios
                .get("/api/comment")
                .then((resp) => (this.comments = resp.data.result));
        },
        commit: function (title) {
            axios
                .post("/api/comment", { title: title})
                .then(() => this.refresh());
        },
    },
    mounted: function () {
        this.refresh();
    },
};
</script>

<style>
.wall-content {
    background: #ffffff;
}

.wall_list {
    overflow: auto;
    padding: 8px 24px;
    margin: auto;
    width: 60%;
    height:1000px;
}

.comment_content {
    font-size: 14px;
    color: #333;
}

.comment_time {
    font-size: 12px;
    color: #555;
}

.input_area{
    position: absolute;
    bottom: 0px;
    width: 100%;
    background-color: #E9EFF4;
}    

.input_content {
    margin: auto;
    margin-top: 30px;
    margin-bottom: 30px;
    width: 60%;
}
</style>