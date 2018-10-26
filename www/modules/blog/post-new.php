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