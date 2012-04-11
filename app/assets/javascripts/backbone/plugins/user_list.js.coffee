class Kandan.Plugins.UserList

  @widget_title: "People"
  @widget_icon_url: "/assets/people_icon.png"
  @widget_name: "users"
  @plugin_namespace: "Kandan.Plugins.UserList"

  @template: _.template '''
    <div class="user clearfix">
      <img class="avatar" src="http://gravatar.com/avatar/<%= gravatar_hash %>?s=25&d=https://bushi.do/images/profile.png"/>
      <span class="name"><%= name %></span>
    </div>
  '''

  @render: ($el)->
    $users = $("<div class='user_list'></div>")
    $el.next().hide();

    for user in Kandan.Data.ActiveUsers.all()
      displayName   = null
      displayName   = "#{user.first_name} #{user.last_name}" if user.first_name?
      displayName ||= user.email # Default to user email address if that's all we have

      $users.append @template({
        name: displayName,
        gravatar_hash: user.gravatar_hash
      })
    $el.html($users)


  @init: ()->
    Kandan.Widgets.register @plugin_namespace
    Kandan.Data.ActiveUsers.registerCallback "change", ()=>
      Kandan.Widgets.render @plugin_namespace
