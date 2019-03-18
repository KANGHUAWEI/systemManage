package com.moyu.core.user.dao.mapper;

import com.moyu.core.user.domain.MyUserRoleRelation;
import com.moyu.core.user.domain.MyUserRoleRelationExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MyUserRoleRelationMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table moyu_user_role_relation
     *
     * @mbg.generated Fri Jan 25 12:25:43 CST 2019
     */
    long countByExample(MyUserRoleRelationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table moyu_user_role_relation
     *
     * @mbg.generated Fri Jan 25 12:25:43 CST 2019
     */
    int deleteByExample(MyUserRoleRelationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table moyu_user_role_relation
     *
     * @mbg.generated Fri Jan 25 12:25:43 CST 2019
     */
    int insert(MyUserRoleRelation record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table moyu_user_role_relation
     *
     * @mbg.generated Fri Jan 25 12:25:43 CST 2019
     */
    int insertSelective(MyUserRoleRelation record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table moyu_user_role_relation
     *
     * @mbg.generated Fri Jan 25 12:25:43 CST 2019
     */
    List<MyUserRoleRelation> selectByExample(MyUserRoleRelationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table moyu_user_role_relation
     *
     * @mbg.generated Fri Jan 25 12:25:43 CST 2019
     */
    int updateByExampleSelective(@Param("record") MyUserRoleRelation record, @Param("example") MyUserRoleRelationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table moyu_user_role_relation
     *
     * @mbg.generated Fri Jan 25 12:25:43 CST 2019
     */
    int updateByExample(@Param("record") MyUserRoleRelation record, @Param("example") MyUserRoleRelationExample example);
}