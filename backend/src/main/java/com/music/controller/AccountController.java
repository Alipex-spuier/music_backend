package com.music.controller;

import cn.hutool.core.map.MapUtil;
import cn.hutool.crypto.SecureUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.music.Utils.JwtUtils;
import com.music.common.dto.LoginDto;
import com.music.common.lang.Result;
import com.music.entity.User;
import com.music.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.Assert;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.util.Date;

@RestController
@RequestMapping("/account")
public class AccountController {
    @Autowired
    UserService userService;
    @Autowired
    JwtUtils jwtUtils;

    @PostMapping("/login")
    public Result login(@Validated @RequestBody LoginDto loginDto, HttpServletResponse response) {
        User user = userService.getOne(new QueryWrapper<User>().eq("username", loginDto.getUsername()));
        Assert.notNull(user, "用户不存在");
        if (!user.getPassword().equals(SecureUtil.md5(loginDto.getPassword()))) {
            return Result.fail("密码不正确");
        }
        String jwt = jwtUtils.generateToken(user.getUserId());
        response.setHeader("Authorization", jwt);
        response.setHeader("Access-control-Expose-Headers", "Authorization");
        user.setLastLogin(new Date());
        userService.updateById(user);
        return Result.succ(MapUtil.builder()
                .put("userId", user.getUserId())
                .put("username", user.getUsername())
                .put("avatar", user.getAvatar())
                .put("email", user.getEmail())
                .put("work", user.getWork())
                .put("country", user.getCountry())
                .put("age", user.getAge())
                .put("created", user.getCreated())
                .put("lastLogin", user.getLastLogin())
                .map()
        );
    }
    @RequiresAuthentication
    @PostMapping("/logout")
    public Result logout() {
        SecurityUtils.getSubject().logout();
        return Result.succ("用户已退出");
    }

    @PostMapping("/register")
    public Result register(@Validated @RequestBody User user) {

        String encryptedPassword = SecureUtil.md5(user.getPassword());
        user.setPassword(encryptedPassword);
        user.setCreated(new Date());
        String msg = userService.registerService(user);

        if (("SUCCESS").equals(msg)) {
            return Result.succ("注册成功");
        } else {
            return Result.fail(msg);
        }
    }
}
