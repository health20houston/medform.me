<ul class="nav nav-tabs" id="myTab">
  <li class="active"><a href="#home" data-toggle="tab">Home</a></li>
  <li><a href="#profile" data-toggle="tab">Profile</a></li>
  <li><a href="#messages" data-toggle="tab">Messages</a></li>
  <li><a href="#settings" data-toggle="tab">Settings</a></li>
</ul>
 
<div class="tab-content">
  <div class="tab-pane active" id="home">This is home</div>
  <div class="tab-pane" id="profile">Profile</div>
  <div class="tab-pane" id="messages">Message</div>
  <div class="tab-pane" id="settings">...</div>
</div>
 
<script>
  $(function () {
    $('#myTab a:last').tab('show');
  })
</script>


% rebase mainLayout title = "Profile"