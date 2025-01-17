package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;

/**
 * 员工
 *
 * @author 
 * @email
 * @date 2021-03-06
 */
@TableName("yonghu")
public class YonghuEntity<T> implements Serializable {
    private static final long serialVersionUID = 1L;


	public YonghuEntity() {

	}

	public YonghuEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


    /**
     * 主键
     */
    @TableId(type = IdType.AUTO)
    @TableField(value = "id")

    private Integer id;


    /**
     * 账户
     */
    @TableField(value = "username")

    private String username;


    /**
     * 密码
     */
    @TableField(value = "password")

    private String password;


    /**
     * 员工编号
     */
    @TableField(value = "id_card")

    private String idCard;


    /**
     * 姓名
     */
    @TableField(value = "name")

    private String name;


    /**
     * 手机号
     */
    @TableField(value = "phone")

    private String phone;


    /**
     * 身份证号
     */
    @TableField(value = "id_number")

    private String idNumber;


    /**
     * 性别
     */
    @TableField(value = "sex_types")

    private Integer sexTypes;


    /**
     * 岗位
     */
    @TableField(value = "gangwei_types")

    private Integer gangweiTypes;


    /**
     * 工种
     */
    @TableField(value = "gongzhong_types")

    private Integer gongzhongTypes;


    /**
     * 照片
     */
    @TableField(value = "my_photo")

    private String myPhoto;


    /**
     * 合同
     */
    @TableField(value = "my_file")

    private String myFile;


    /**
     * 民族
     */
    @TableField(value = "nation")

    private String nation;


    /**
     * 政治面貌
     */
    @TableField(value = "politics_types")

    private Integer politicsTypes;


    /**
     * 籍贯
     */
    @TableField(value = "birthplace")

    private String birthplace;


    /**
     * 人员状态
     */
    @TableField(value = "yonghu_types")

    private Integer yonghuTypes;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @TableField(value = "create_time",fill = FieldFill.INSERT)

    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：账户
	 */
    public String getUsername() {
        return username;
    }


    /**
	 * 获取：账户
	 */

    public void setUsername(String username) {
        this.username = username;
    }
    /**
	 * 设置：密码
	 */
    public String getPassword() {
        return password;
    }


    /**
	 * 获取：密码
	 */

    public void setPassword(String password) {
        this.password = password;
    }
    /**
	 * 设置：员工编号
	 */
    public String getIdCard() {
        return idCard;
    }


    /**
	 * 获取：员工编号
	 */

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }
    /**
	 * 设置：姓名
	 */
    public String getName() {
        return name;
    }


    /**
	 * 获取：姓名
	 */

    public void setName(String name) {
        this.name = name;
    }
    /**
	 * 设置：手机号
	 */
    public String getPhone() {
        return phone;
    }


    /**
	 * 获取：手机号
	 */

    public void setPhone(String phone) {
        this.phone = phone;
    }
    /**
	 * 设置：身份证号
	 */
    public String getIdNumber() {
        return idNumber;
    }


    /**
	 * 获取：身份证号
	 */

    public void setIdNumber(String idNumber) {
        this.idNumber = idNumber;
    }
    /**
	 * 设置：性别
	 */
    public Integer getSexTypes() {
        return sexTypes;
    }


    /**
	 * 获取：性别
	 */

    public void setSexTypes(Integer sexTypes) {
        this.sexTypes = sexTypes;
    }
    /**
	 * 设置：岗位
	 */
    public Integer getGangweiTypes() {
        return gangweiTypes;
    }


    /**
	 * 获取：岗位
	 */

    public void setGangweiTypes(Integer gangweiTypes) {
        this.gangweiTypes = gangweiTypes;
    }
    /**
	 * 设置：工种
	 */
    public Integer getGongzhongTypes() {
        return gongzhongTypes;
    }


    /**
	 * 获取：工种
	 */

    public void setGongzhongTypes(Integer gongzhongTypes) {
        this.gongzhongTypes = gongzhongTypes;
    }
    /**
	 * 设置：照片
	 */
    public String getMyPhoto() {
        return myPhoto;
    }


    /**
	 * 获取：照片
	 */

    public void setMyPhoto(String myPhoto) {
        this.myPhoto = myPhoto;
    }
    /**
	 * 设置：合同
	 */
    public String getMyFile() {
        return myFile;
    }


    /**
	 * 获取：合同
	 */

    public void setMyFile(String myFile) {
        this.myFile = myFile;
    }
    /**
	 * 设置：民族
	 */
    public String getNation() {
        return nation;
    }


    /**
	 * 获取：民族
	 */

    public void setNation(String nation) {
        this.nation = nation;
    }
    /**
	 * 设置：政治面貌
	 */
    public Integer getPoliticsTypes() {
        return politicsTypes;
    }


    /**
	 * 获取：政治面貌
	 */

    public void setPoliticsTypes(Integer politicsTypes) {
        this.politicsTypes = politicsTypes;
    }
    /**
	 * 设置：籍贯
	 */
    public String getBirthplace() {
        return birthplace;
    }


    /**
	 * 获取：籍贯
	 */

    public void setBirthplace(String birthplace) {
        this.birthplace = birthplace;
    }
    /**
	 * 设置：人员状态
	 */
    public Integer getYonghuTypes() {
        return yonghuTypes;
    }


    /**
	 * 获取：人员状态
	 */

    public void setYonghuTypes(Integer yonghuTypes) {
        this.yonghuTypes = yonghuTypes;
    }
    /**
	 * 设置：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 获取：创建时间
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "Yonghu{" +
            "id=" + id +
            ", username=" + username +
            ", password=" + password +
            ", idCard=" + idCard +
            ", name=" + name +
            ", phone=" + phone +
            ", idNumber=" + idNumber +
            ", sexTypes=" + sexTypes +
            ", gangweiTypes=" + gangweiTypes +
            ", gongzhongTypes=" + gongzhongTypes +
            ", myPhoto=" + myPhoto +
            ", myFile=" + myFile +
            ", nation=" + nation +
            ", politicsTypes=" + politicsTypes +
            ", birthplace=" + birthplace +
            ", yonghuTypes=" + yonghuTypes +
            ", createTime=" + createTime +
        "}";
    }
}
