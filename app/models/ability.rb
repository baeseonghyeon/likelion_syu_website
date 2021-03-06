class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
      if user.nil? #비로그인 읽기만 가능
        can [:read,:notice,:homework,:lecture,:freeboard,:mypage,:mypost,:questions,:usershow, :photo], :all
      elsif user.has_role? 'member' #멤버등급 읽기,쓰기, 본인글 수정 삭제, 활동 멤버
        can [:read,:create,:notice,:homework,:lecture,:freeboard,:mypage,:mypost,:questions,:usershow, :photo], :all
        can [:update,:destroy], Post, user_id: user.id
      elsif user.has_role? 'oldmember' #멤버등급 읽기,쓰기, 본인글 수정 삭제, 올드 멤버
        can [:read,:create,:notice,:homework,:lecture,:freeboard,:mypage,:mypost,:questions,:usershow, :photo], :all
        can [:update,:destroy], Post, user_id: user.id  
      elsif user.has_role? 'manager' #매니저, 모든글 접근
        can [:read,:create,:update,:destory,:notice,:homework,:lecture,:mainnew,:servicenew,:usershow,:mypost,:freeboard,:questions, :photo], :all
        can [:update,:destroy], Post, user_id: user.id
        can [:update,:destroy], :all 
      elsif user.has_role? 'admin' #어드민, 마스터, 모든글 접근, 어드민페이지 접근
        can [:read,:create,:update,:destory,:notice,:homework,:lecture,:mainnew,:servicenew,:usershow, :photo], :all
        can :access, :rails_admin
        # can :dashboard
        can :manage, :all 
        can :history, :all  
      elsif
        can [:read,:create,:notice,:homework,:lecture,:freeboard,:mypage,:mypost,:questions,:usershow, :photo], :all #등급은 없고 가입만 한 뉴비, 제거하면 가입후 세션막힘
        can [:update,:destroy], Post, user_id: user.id
      end 
      

    
   
 
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
