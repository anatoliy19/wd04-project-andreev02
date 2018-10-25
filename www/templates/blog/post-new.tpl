<h1>post-new.tpl</h1>

<?php

echo "<pre>";
print_r($_POST);
echo "</pre>";


?>

<div class="content">
			<div class="container user-content section-page">
				<div class="row">
					<div class="col-md-10 offset-md-1">
						<h1>Добавить пост</h1>

      <?php require( ROOT . "templates/_parts/_errors.tpl" )?>


						<div action="<?=HOST?>blog/post-new" method="POST" enctype="multipart/form-data" class="form-group">						
								<label class="label">Название<input class="input" name="postTitle" type="text" placeholder="Введите имя" />
							</label>
						</div>
					
						<div class="blog-edit__container"><b>Изображение</b>
							<p class="mb-10"> Изображение jpg или png, рекомендуемая ширина 945px и больше, высота от 400px и более, вес до 2Мб.</p>
						</div>
						
						<div class="blog-edit__fileUp">
							<input class="inputfile" type="file" name="postImg" id="file"/>

							<!-- <label class="label-input-file" for="file">Выбрать файл</label>
							<span>Файл не выбран</span> -->
						</div>
								<form action="<?=HOST?>blog/post-new" method="POST" enctype="multipart/form-data">
							<div class="form-group">
								<label class="label">Содержание<textarea class="textarea" name="postText" type="type" placeholder="Текст 
								поста">
							</textarea>
						</label>
					  </div>			
					</form>
    <input type="submit" name="postNew" class="button button--save mr-20" value="Сохранить">
							<a class="button" href="<?=HOST?>blog">Отмена
							</a>  
					</div>
				</div>
			</div>