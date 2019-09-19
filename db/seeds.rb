# Categories
 
acao = Category.create(name: 'Ação')
 
aventura = Category.create(name: 'Aventura')
 
terror = Category.create(name: 'Terror')
 
outros = Category.create(name: 'Outros')
# Featured Movie
movie1 = Movie.create(title: "Matrix - O inicio",
description: "A Humanidade foi escravizada por um IA...",
thumbnail_key: "matrix.jpg", thumbnail_cover_key:
"matrix-cover.jpg", video_key: "filme-matrix.mp4",
highlighted: true, category: acao, featured_thumbnail_key:
"matrix.jpg")
 
# Users
user1 = User.create(name: 'example', email: 'example@example.com',
password: '123456', password_confirmation: '123456')
user2 = User.create(name: 'example2', email: 'example2@example.com',
password: '123456', password_confirmation: '123456')
user3 = User.create(name: 'example3', email: 'example3@example.com',
password: '123456', password_confirmation: '123456')
user4 = User.create(name: 'example4', email: 'example4@example.com',
password: '123456', password_confirmation: '123456')
user5 = User.create(name: 'example5', email: 'example5@example.com',
password: '123456', password_confirmation: '123456')
 
# Movies sem série
movie2 = Movie.create(title: "Vingadores Ultimato", description: "Após Thanos eliminar metade das criaturas vivas, os Vingadores têm de lidar com a perda de amigos e entes queridos. Com Tony Stark vagando perdido no espaço sem água e comida, Steve Rogers e Natasha Romanov lideram a resistência contra o titã louco..",
thumbnail_key: "vingadores.png", thumbnail_cover_key: "vingadores-cover.png" ,
video_key: "vingadores.mp4", category: aventura)
movie3 = Movie.create( title: "Titanic", description: "Um artista pobre e uma jovem rica se conhecem e se apaixonam na fatídica jornada do Titanic, em 1912. Embora esteja noiva do arrogante herdeiro de uma siderúrgica, a jovem desafia sua família e amigos em busca do verdadeiro amor..", thumbnail_key: "titanic.png", thumbnail_cover_key:
"titanic-cover.png", video_key: "titanic.mp4", category: outros)
movie4 = Movie.create(title: "Armagedom", description: "Um asteroide ameaça colidir com a Terra e destruir todas as formas de vida. A solução é colocar uma bomba nuclear no interior do asteroide. Para realizar esta missão, convocam um perfurador de petróleo, e ele monta uma equipe nada convencional.." ,
thumbnail_key: "armagedom.png" , thumbnail_cover_key: "armagedom-cover.png",
video_key: "armagedom.mp4", category: outros)
 
# Series
vscode = Serie.create(title: 'Taverna do dragao', description: 'Canal que criei a muitos anos para o youtube', thumbnail_key: "taverna.png", thumbnail_cover_key:
"taverna-cover.png", last_watched_episode_id: 1, category:
outros)
movie5 = Movie.create(title: "5 ideias de séries prequel para Game Of Thrones", description: "Víde onde dou ideias de novas séries para HBO fazer no universo de RR Martin.", thumbnail_key: "taverna1.png", thumbnail_cover_key:
"taverna1-cover.png", video_key: "taverna1.mp4", serie: vscode,
episode_number: 1)
movie6 = Movie.create(title: "Expandindo Universos com o Taverna do Dragão", description: "Segundo vídeo que fiz para o canal taverna do dragão.", thumbnail_key: "taverna2.png", thumbnail_cover_key:
"taverna2-cover.png", video_key: "taverna2.mp4", serie: vscode,
episode_number: 2)
 
# Keep Wathching
Player.create(start_date: Time.now, user: user1, elapsed_time: '14',
movie: movie1)
Player.create(start_date: Time.now, user: user1, elapsed_time: '14',
movie: movie2)
Player.create(start_date: Time.now, user: user1, elapsed_time: '14',
movie: movie3)
Player.create(start_date: Time.now, user: user1, elapsed_time: '14',
movie: movie4)
Player.create(start_date: Time.now, user: user1, elapsed_time: '14',
movie: movie5)
 
# Reviews
Review.create(rating: 3, description: 'Eu gostei, mas, sei lá, faltou algo.', reviewable: movie2, user: user1)
Review.create(rating: 2, description: 'ótimo filme, recomendo pra todos. ', reviewable: movie2, user: user2)
Review.create(rating: 5, description: 'Eu não sei o que comentar sobre isso. ' , reviewable: movie2, user: user3)
Review.create(rating: 3, description: 'será que eu devo mesmo comentar algo?', reviewable: movie2, user: user4)
Review.create(rating: 5, description: 'segue o jogo.', reviewable: movie2, user: user5)
 
# Favorites
Favorite.create(favoritable: Movie.all[0], user: user1)
Favorite.create(favoritable: Movie.all[1], user: user1)
Favorite.create(favoritable: Movie.all[2], user: user1)
Favorite.create(favoritable: Movie.all[3], user: user1)
Favorite.create(favoritable: Movie.all[4], user: user1)