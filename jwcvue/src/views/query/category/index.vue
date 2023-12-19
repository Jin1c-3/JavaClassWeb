<template>
  <div class="app-container">
    <el-table
      v-loading="listLoading"
      :data="list"
      element-loading-text="Loading"
      height="calc(100vh - 100px)"
      border
      fit
      highlight-current-row
    >
      <el-table-column align="center" label="编号" min-width="95">
        <template slot-scope="scope">
          {{ scope.row.id }}
        </template>
      </el-table-column>

      <el-table-column
        label="物资名称"
        align="center"
        min-width="120"
        sortable
        prop="name"
      >
        <template slot-scope="scope">
          {{ scope.row.name }}
        </template>
      </el-table-column>

      <el-table-column
        label="物资数量"
        min-width="110"
        align="center"
        sortable
        prop="num"
      >
        <template slot-scope="scope">
          <span>{{ scope.row.num }}</span>
        </template>
      </el-table-column>

      <el-table-column label="是否重点物资" min-width="120" align="center">
        <template slot-scope="scope">
          {{ scope.row.flag }}
        </template>
      </el-table-column>

      <el-table-column
        class-name="status-col"
        label="负责人电话"
        min-width="200"
        align="center"
      >
        <template slot-scope="scope">
          {{ scope.row.phone }}
        </template>
      </el-table-column>

      <el-table-column
        align="center"
        label="更新时间"
        min-width="200"
        sortable
        prop="date"
      >
        <template slot-scope="scope">
          <i class="el-icon-time" />
          <span style="margin-left: 5px">{{ scope.row.date }}</span>
        </template>
      </el-table-column>

      <el-table-column fixed="right" label="操作" width="150" align="center">
        <template slot-scope="scope">
          <el-button type="success" size="small" plain>
            <a
              :href="scope.row.fileurl"
              target="blank"
              style="text-decoration: none"
              >查看</a
            >
          </el-button>

          <el-button
            @click.native.prevent="deleteRow(scope.row.id, list)"
            type="danger"
            size="small"
            plain
          >
            删除
          </el-button>
        </template>
      </el-table-column>
    </el-table>
  </div>
</template>

<script>
import { getList, deleteTuple } from "@/api/category";

export default {
  filters: {
    statusFilter(status) {
      const statusMap = {
        published: "success",
        draft: "gray",
        deleted: "danger",
      };
      return statusMap[status];
    },
  },
  data() {
    return {
      list: null,
      listLoading: true,
    };
  },
  created() {
    this.fetchData();
  },
  methods: {
    fetchData() {
      console.log("fetchdata of category!");
      this.listLoading = true;
      getList().then((response) => {
        this.list = response.data.items;
        this.total = response.data.total;
        this.listLoading = false;
      });
    },

    deleteRow(id, list) {
      console.log(id);
      this.listLoading = true;
      var tempid = list.find((l) => l.id === id).id;
      console.log(tempid);
      list = list.splice(list.indexOf(tempid), 1);
      try {
        deleteTuple(tempid).then((res) => {
          this.$message({
            message: "删除成功",
            type: "success",
          });
        });
      } catch (err) {
        this.$message({
          message: "错误：前端数据被删除，但后端数据库数据并未更新！",
          type: "warning",
        });
      }
      this.listLoading = false;
    },
  },
};
</script>
