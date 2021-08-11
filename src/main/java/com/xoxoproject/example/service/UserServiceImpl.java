package com.xoxoproject.example.service;

import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.xoxoproject.example.domain.User;
import com.xoxoproject.example.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService{
	@Autowired UserMapper userMapper;

	// id를 사용하여 db를 조회 성공시 user 반환
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = userMapper.readUser(username);
		user.setAuthorities(getAuthorities(username));

		return user;
	}

	@Override
	public Collection<GrantedAuthority> getAuthorities(String username) {
		List<GrantedAuthority> authorities = userMapper.readAuthorities(username);
		return authorities;
	}

	@Override
	public void createUser(User user) {
		userMapper.createUser(user);
	}

	@Override
	public void createAuthorities(User user) {
		userMapper.createAuthority(user);
	}

	@Override
	public User readUser(String username) {
		return userMapper.readUser(username);
	}
}
