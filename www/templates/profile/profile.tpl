<div class="container">
	<div class="row align-items-center mt-40">
		<div class="col offset-md-1">
			<div class="title-1 color">Профиль</div>
		</div>
		<div class="col text-right">
			<a class="button button--edit" href="<?=HOST?>profile-edit">Редактировать</a>
		</div>
	</div>
	<div class="row offset-md-1">
		<div class="col-md-auto">
			<div class="avatar">
			<?php if ( $_SESSION['logged_user']['avatar'] != "") { ?>
			<img src="<?=HOST?>usercontent/avatar/<?=$currentUser->avatar?>" alt="<?=$currentUser->name?> <?=$currentUser->secondname?>" />
			<?php } ?>

			</div>
		</div>
		<div class="col">
			<div class="user-info">
				<div class="user-info__title">Имя и фамилия</div>
				<div class="user-info__desc"><?=$currentUser->name?> <?=$currentUser->secondname?></div>
			</div>
			<div class="user-info">
				<div class="user-info__title">Email</div>
				<div class="user-info__desc">
					<a href="mailto:google.com"><?=$currentUser->email?></a>
				</div>
			</div>
			<div class="user-info">
				<div class="user-info__title">Страна, Город</div>
				<div class="user-info__desc"><?=$currentUser->country?> <?=$currentUser->city?></div>
			</div>
		</div>
	</div>
</div>
<div class="container">
	<div class="row justify-content-center">
		<div class="col-md-10">
			<div class="title-2 color">Комментарии пользователя</div>
			<div class="profile-comments mb-100">
				<div class="user-comment">
					<div class="user-comment-wrap">
						<div class="comment-wrap">
							<div class="user-name">
								<a href="#">Поездка в Москву</a>
							</div>
							<div class="user-date"><i class="far fa-clock"></i>
								<span class="user-date--dat">18 октября 2018 года в 13:32</span>
							</div>
						</div>
						<p class="user-text">В конце октября обещают дожди</p>
					</div>
				</div>
				<div class="user-comment">
					<div class="user-comment-wrap">
						<div class="comment-wrap">
							<div class="user-name">
								<a href="#">Настройка рабочего окружения</a>
							</div>
							<div class="user-date"><i class="far fa-clock"></i>
								<span class="user-date--dat">17 октября 2018 года в 10:47</span>
							</div>
						</div>
						<p class="user-text">Настроил Open Server, Sublime, Php</p>
					</div>
				</div>
				<div class="user-comment">
					<div class="user-comment-wrap">
						<div class="comment-wrap">
							<div class="user-name">
								<a href="#">Запуск Open Server</a>
							</div>
							<div class="user-date"><i class="far fa-clock"></i>
								<span class="user-date--dat">16 октября 2018 года в 15:32</span>
							</div>
						</div>
						<p class="user-text">Для запуска надо выбирать версию php и базы данных</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>