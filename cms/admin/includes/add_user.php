<?php 

     if(isset($_POST['create_user'])) {
        echo $user_firstname = $_POST['user_firstname'];
        $user_lastname = $_POST['user_lastname'];
        $user_role = $_POST['user_role'];
        
        //$post_image = $_FILES['image']['name'];
        //$post_image_temp = $_FILES['image']['tmp_name'];
        
        $username = $_POST['username'];
        $user_password = $_POST['user_password'];
        //$post_date = date('d-m-y');
        //$post_comment_count = 4;
/* 
             move_uploaded_file($post_image_temp, "../images/$post_image");
          
             $query = "INSERT INTO posts(post_category_id, post_title, post_author, post_date, post_image, post_content, post_tags, post_status) ";
 
             $query .= "VALUES({$post_category_id}, '{$post_title}', '{$post_author}', now(), '{$post_image}', '{$post_content}','{$post_tags}', '{$post_status}')";

        $create_post_query = mysqli_query($connection, $query);
        
        if(!$create_post_query) {

            die ("QUERY FAILD" . mysqli_error($connection));
        }*/
      
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