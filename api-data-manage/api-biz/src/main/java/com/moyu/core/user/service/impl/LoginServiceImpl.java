package com.moyu.core.user.service.impl;

import com.moyu.core.constant.CommonConstant;
import com.moyu.core.user.dao.mapper.MyUserMapper;
import com.moyu.core.user.domain.MyUser;
import com.moyu.core.user.domain.MyUserExample;
import com.moyu.core.user.service.LoginService;
import com.moyu.util.ListUtil;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("loginService")
public class LoginServiceImpl implements LoginService {

    @Resource
    private MyUserMapper myUserMapper;


    @Override
    public MyUser getUser(String loginName) {
        if(StringUtils.isEmpty(loginName)){
            return null;
        }
        MyUserExample example = new MyUserExample();
        example.createCriteria()
                .andLoginNameEqualTo(loginName)
                .andStateEqualTo(CommonConstant.STATE)
                .andIsDelEqualTo(CommonConstant.IS_DEL);
        List<MyUser> myUsers = myUserMapper.selectByExample(example);
        return (MyUser) ListUtil.getOne(myUsers);
    }


}
