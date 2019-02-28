require_relative "mouse.so"
module Mouse_
  module_function
  M_L_DOWN = 2 #�}�E�X���{�^�����������Ƃ�
  M_L_RELEASE = 4 #�}�E�X���{�^�����������Ƃ�
  M_R_DOWN = 8 #�}�E�X�E�{�^�����������Ƃ�
  M_R_RELEASE = 16 #�}�E�X�E�{�^�����������Ƃ�

  def is_cursor_moving?(arg=0.001)
    #�}�E�X�J�[�\�����ړ����Ă��邩���ׂ郁�\�b�h�ł�.
    #�����͈ړ����Ă��邩���ׂ�Ԋu��,�w�肪�Ȃ����0.001�b���Ƃɒ��ׂĂ��܂�.
    before = [getCursorXPos,getCursorYPos]
    sleep arg
    if(((getCursorXPos-before[0]).abs) > 0)||(((getCursorYPos-before[1]).abs) > 0)
      return true
    else
      return false
    end
  end

  def getCursorPosX
    #�}�E�X�J�[�\����X���W���擾���郁�\�b�h�ł�.
    Mouse.new.getCursorXPos
  end

  def getCursorPosY
    #�}�E�X�J�[�\����Y���W���擾���郁�\�b�h�ł�.
    Mouse.new.getCursorYPos
  end

  def setCursorPos(x_pos,y_pos)
    #�}�E�X�J�[�\���̍��W��ύX���郁�\�b�h�ł�.
    #��������X���W,��������Y���W�ł�.
    Mouse.new.setCursorPos(x_pos,y_pos)
  end

  def sendMouseEvent(key_mouse)
    #�}�E�X�̍��E�{�^���̉��z�L�[���o�͂��郁�\�b�h�ł�.
    #���z�L�[�R�[�h�͒萔�Ƃ��Ē�`���Ă���܂�
    Mouse.new.mouseKeyEvent(key_mouse)
  end

  def getKeyState(key)
    #�w�肳�ꂽ�L�[�̏�Ԃ��擾���郁�\�b�h�ł�.
    #�߂�l��,������Ă��Ȃ��Ƃ���0,������Ă���Ƃ��͂���ȊO�ł�.
    Mouse.new.getKeyState(key)
  end
end
include Mouse_
