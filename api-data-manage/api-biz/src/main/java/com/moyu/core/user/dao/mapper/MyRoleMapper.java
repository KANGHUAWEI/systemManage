package com.moyu.core.user.dao.mapper;

import com.moyu.core.user.domain.MyRole;
import com.moyu.core.user.domain.MyRoleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MyRoleMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table moyu_role
     *
     * @mbg.generated Fri Jan 25 12:25:43 CST 2019
     */
    long countByExample(MyRoleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table moyu_role
     *
     * @mbg.generated Fri Jan 25 12:25:43 CST 2019
     */
    int deleteByExample(MyRoleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table moyu_role
     *
     * @mbg.generated Fri Jan 25 12:25:43 CST 2019
     */
    int insert(MyRole record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table moyu_role
     *
     * @mbg.generated Fri Jan 25 12:25:43 CST 2019
     */
    int insertSelective(MyRole record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table moyu_role
     *
     * @mbg.generated Fri Jan 25 12:25:43 CST 2019
     */
    List<MyRole> selectByExample(MyRoleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table moyu_role
     *
     * @mbg.generated Fri Jan 25 12:25:43 CST 2019
     */
    int updateByExampleSelective(@Param("record") MyRole record, @Param("example") MyRoleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table moyu_role
     *
     * @mbg.generated Fri Jan 25 12:25:43 CST 2019
     */
    int updateByExample(@Param("record") MyRole record, @Param("example") MyRoleExample example);
}