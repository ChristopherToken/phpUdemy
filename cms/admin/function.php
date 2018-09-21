<?php 

function confirmQuery($result){

    global $connection;

    if(!$result) {

        die("QUERY FAILED ." . mysqli_error($connection));
    }

}


// INSERT CATEGORIES TO DB
function insert_categories() {

    global $connection;

    if(isset($_POST['submit'])) {
        $cat_title = $_POST['cat_title'];
    if($cat_title == "" || empty($cat_title)) {
        echo "you know what man this field must be empty";
    } else {
        $query = "INSERT INTO categories(cat_title)";
        $query .= "VALUE('{$cat_title}') ";

        $create_category_query = mysqli_query($connection, $query);

        if(!$create_category_query) {
        die('Querry Failded' . mysqli_error($connection));
           
            }
        }
    }
}



function findAllCategories () {
global $connection;
//BRING CATEGORIES FROM DATABASE TO TABLE IF WANT LIMIT USE: LIMIT: 3
    $query =  "SELECT * FROM categories";
    $select_categories = mysqli_query($connection, $query);
                    
    //display categories in table
    while($row = mysqli_fetch_assoc( $select_categories)) {
    $cat_id =  $row['cat_id'];
    $cat_title =  $row['cat_title'];
    echo "<tr>";
    echo "<td>{$cat_id}</td>";
    echo "<td>{$cat_title}</td>";
    echo "<td><a href='categories.php?delete={$cat_id}'>Delete</a></td>";
    echo "<td><a href='categories.php?edit={$cat_id}'>Edit</a></td>";
    echo "</tr>";
    }
}



function deleteCategories () {
    //DELETE CATEGORIES FUNCTION
    global $connection;
    if(isset($_GET['delete'])){
        $the_cat_id = $_GET['delete'];
        $query = "DELETE FROM categories WHERE cat_id = {$the_cat_id}";
        $delete_query = mysqli_query($connection, $query);
        header("Location: categories.php");
    }  
}



