package com.spring.ec.user.service;

import java.util.List;
import java.util.Map;

import com.spring.ec.user.vo.BoardVO;
import com.spring.ec.user.vo.CommentVO;
import com.spring.ec.user.vo.StoreVO;

public interface UserService {
	
	//����� �Խ��� ���� �޼ҵ�
	//�÷��� ����Ʈ �Խ��� ���
	public List<BoardVO> listBoards()throws Exception;
	//���ø� �Խù���ϸ� ����
	public List<BoardVO> eatListBoards()throws Exception;
	//���ø� �Խù� ��ϸ� ����
	public List<BoardVO> seeListBoards()throws Exception;
	//�Խù� ��â
	public Map viewBoard(int list_num) throws Exception;
	
	public void addHits(int list_num)throws Exception;
	
	public int addNewBoard(Map boardMap) throws Exception;
	
	public List<CommentVO> listComments(int list_num)throws Exception;
	
	public int addNewComment(Map commentMap) throws Exception;
	
	public List<StoreVO> selectAllStores()throws Exception;
}
