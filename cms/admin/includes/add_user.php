<?php 

     if(isset($_POST['create_user'])) {
        $user_firstname = $_POST['user_firstname'];
        $user_lastname = $_POST['user_lastname'];
        $user_role = $_POST['user_role'];
        
        //$post_image = $_FILES['image']['name'];
        //$post_image_temp = $_FILES['image']['tmp_name'];
        
        $username = $_POST['username'];
        $user_email = $_POST['user_email'];
        $user_password = $_POST['user_password'];
       
        $user_password = password_hash($user_password, PASSWORD_BCRYPT, array('cost' => 10) );

$query = "INSERT INTO users(user_firstname, user_lastname, user_role,username,user_email,user_password) ";
                 
$query .= "VALUES('{$user_firstname}','{$user_lastname}','{$user_role}','{$username}','{$user_email}', '{$user_password}') ";

        echo "User Created: " . " " . "<a href='users.php'>View Users</a>";

        $create_user_query = mysqli_query($connection, $query);
        
        if(!$create_user_query) {

            die ("QUERY FAILD" . mysqli_error($connection));
        }
      
    } 
 ?>


 <form actoin="" method="post" enctype="multipart/form-data">
 
 <div class="form-group">
        <label for="title">FirstName</label>
        <input type="text" class="form-control" name="user_firstname">
    </div>

     <div class="form-group">
        <label for="post_status">LastName</label>
        <input type="text" class="form-control" name="user_lastname">
    </div>

    <div class="form-group">
        <select name="user_role" id="">
        <option value="subscriber">select option</option>
            <option value="admin">admin</option>
            <option value="subscriber">subscriber</option>
        </select>
    </div>

 

   <div class="form-group">
        <label for="post_tags">Username</label>
        <input type="text" class="form-control" name="username">
    </div>



   <div class="form-group">
        <label for="post_tags">Email</label>
        <input type="email" class="form-control" name="user_email">
    </div>

    <div class="form-group">
        <label for="post_tags">Password</label>
        <input type="password" class="form-control" name="user_password">
    </div>


     <div class="form-group">
        <input class="btn btn-primary" type="submit" name="create_user" value="Add user">
    </div>

     </form>