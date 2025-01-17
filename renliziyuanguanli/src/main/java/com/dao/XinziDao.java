package com.dao;

import com.entity.XinziEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.view.XinziView;

/**
 * 工资 Dao 接口
 *
 * @author 
 * @since 2021-03-06
 */
public interface XinziDao extends BaseMapper<XinziEntity> {

   List<XinziView> selectListView(Pagination page,@Param("params")Map<String,Object> params);

}
