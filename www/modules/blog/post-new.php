<?php 

$title = "Блог - Добавить новый пост";

if( isset($_POST['postNew'])) {
	

	if ( trim($_POST['postTitle']) == ''){
		    $errors[] = ['title' => 'Введите название поста'];
	}

if ( trim($_POST['postText']) == ''){
		    $errors[] = ['text' => 'Введите текст поста'];
	}

	if ( empty($errors)){

		  $post = R::dispense('posts');
    $post->title = htmlentities($_POST['postTitle']);
    $post->text = $_POST['postText'];   
    $post->authorId = $_SESSION['logged_user']['id'];
    $post->dateTime = R::isoDateTime();

   if ( isset( $_FILES["postImg"]["name"]) && $_FILES["postImg"]["tmp_name"] != "" ){

   	  $fileName = $_FILES["postImg"]["name"];
   	  $fileTmpLoc =  $_FILES["postImg"]["tmp_name"];
   	  $fileType =  $_FILES["postImg"]["type"];
   	  $fileSize =  $_FILES["postImg"]["size"];
   	  $fileErrorMsg =  $_FILES["postImg"]["error"];
   	  $kaboom = explode(".",$fileName);
   	  $fileExt = end($kaboom);

   	  //проверка свойств файла
   	  list($width, $height) = getimagesize($fileTmpLoc);

   	  if ( $width < 10 || $height < 10){
   	  	  $errors[] = ['title' => 'Изображение не имеет размеров. Загрузите изображение побольше.'];
   	  }

   	  if ( $fileSize > 4194304 ) {
				$errors[] = ['title' => 'Файл изображения не должен быть больше 4 Mb' ];
			}

			if ( !preg_match("/\.(gif|jpg|jpeg|png)$/i", $fileName) ) {
				$errors[]  = [ 'title' => 'Неверный формат файла', 'desc' => '<p>Файл изображения должен быть в формате gif, jpg, jpeg или png.</p>', ];
			}

			if ( $fileErrorMsg == 1 ) {
				$errors[] = ['title' => 'При загрузке изображения произошла ошибка. Повторите попытку' ];
			}

			// Перемещаем загруженный файл в нужную директорию
			$db_file_name = rand(100000000000,999999999999) . "." . $fileExt;
			$postImgFolderLocation = ROOT . 'usercontent/blog/';

			$uploadfile = $postImgFolderLocation . $db_file_name;

			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);

			if ($moveResult != true) {
				$errors[] = ['title' => 'Ошибка сохранения файла' ];
			}

			include_once( ROOT . "/libs/image_resize_imagick.php");

			$target_file = $postImgFolderLocation . $db_file_name;
			$wmax = 920;
			$hmax = 620;
			$img = createThumbnail($target_file, $wmax, $hmax);
			$img->writeImage($target_file);
			$post->postImg = $db_file_name;


   $target_file = $postImgFolderLocation . $db_file_name;
   $resized_file = $postImgFolderLocation ."320-". $db_file_name;
			$wmax = 320;
			$hmax = 140;
			$img = createThumbnail($target_file, $wmax, $hmax);
			$img->writeImage($target_file);
			$post->postImgSmall ="320-" . $db_file_name;
   }   
    R::store($post);
    header('Location: ' . HOST . "blog");
    exit(); 
	}
}


/// Готовим контент для блога
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/blog/post-new.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";
?>