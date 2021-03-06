package com.moyu.core.user.domain;

import java.io.Serializable;
import java.util.Date;

public class MyUser implements Serializable {
    /**
     * 
     */
    private Integer id;

    /**
     * ��¼�˺�
     */
    private String loginName;

    /**
     * 
     */
    private String password;

    /**
     * 
     */
    private String realName;

    /**
     * 
     */
    private String phoneNo;

    /**
     * ��������
     */
    private Integer lockAccount;

    /**
     * ��
     */
    private String salt;

    /**
     * �û���ַ
     */
    private String address;

    /**
     * 
     */
    private Integer state;

    /**
     * 
     */
    private Integer isDel;

    /**
     * 
     */
    private Date gtmCreated;

    /**
     * 
     */
    private Date modifyCreated;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table moyu_user
     *
     * @mbg.generated Fri Jan 25 12:25:43 CST 2019
     */
    private static final long serialVersionUID = -4213314646789516804L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getPhoneNo() {
        return phoneNo;
    }

    public void setPhoneNo(String phoneNo) {
        this.phoneNo = phoneNo;
    }

    public Integer getLockAccount() {
        return lockAccount;
    }

    public void setLockAccount(Integer lockAccount) {
        this.lockAccount = lockAccount;
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getIsDel() {
        return isDel;
    }

    public void setIsDel(Integer isDel) {
        this.isDel = isDel;
    }

    public Date getGtmCreated() {
        return gtmCreated;
    }

    public void setGtmCreated(Date gtmCreated) {
        this.gtmCreated = gtmCreated;
    }

    public Date getModifyCreated() {
        return modifyCreated;
    }

    public void setModifyCreated(Date modifyCreated) {
        this.modifyCreated = modifyCreated;
    }
}