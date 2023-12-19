<template>
  <div class="dashboard-container">
    <div class="dashboard-text">欢迎您，{{ username }}！</div>
    <div class="pic-container">
      <img src="../../assets/dashbord/walkingman.gif" alt="" />
    </div>
  </div>
</template>

<script>
import { mapGetters } from "vuex";

export default {
  name: "Dashboard",
  computed: {
    ...mapGetters(["username"]),
  },
};
</script>

<style lang="scss" scoped>
.dashboard {
  &-container {
    margin: 30px;
  }
  &-text {
    font-size: 30px;
    line-height: 46px;
  }
}
</style>

<style>
.pic-container {
  height: 70vh;
  display: flex;
  justify-content: center;
  align-items: center;
}
.dashboard-text{
  display: inline-block;
}
</style>