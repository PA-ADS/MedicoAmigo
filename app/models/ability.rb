class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= Usuario.new # guest user (not logged in)
    if user.tipo == "M"
        can :manage, Medico, :id => user.medico.id
        can :manage, Clinica, :medico_id => user.medico.id
        can [:new, :create, :read], Agenda, :medico_id => user.medico.id
        can :manage, Agenda do |agenda|
            agenda.quantidade == agenda.saldo && agenda.medico_id == user.medico.id
        end
        can [:read, :aprovar, :update], Solicitacao, :agenda => {:medico_id => user.medico.id}
    elsif user.tipo == "I"
        can :update, Instituicao, :id => user.instituicao.id
        can :manage, Paciente
        can :aberta, Agenda
        can [:new, :create, :read, :instituicao], Solicitacao, :instituicao_id => user.instituicao.id
    elsif user.tipo == "A"
        can :manage, :all
    else
        can [:new, :create], Medico
    end

    if user.tipo != ""
        can :estado_municipio, Municipio
    end

    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
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
