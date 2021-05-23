module ApplicationHelper


  def sample_avatar_image_url
    "https://cdn3.iconfinder.com/data/icons/communication-232/384/Account_circle-512.png"
  end

  def sample_watch_image
    %w[
        https://images.pexels.com/photos/47856/rolex-wrist-watch-clock-gmt-47856.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500
        https://images.pexels.com/photos/7617108/pexels-photo-7617108.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500
        https://images.pexels.com/photos/5895645/pexels-photo-5895645.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500
        https://images.pexels.com/photos/4801853/pexels-photo-4801853.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500
        https://images.pexels.com/photos/5443583/pexels-photo-5443583.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500
        https://images.pexels.com/photos/5895642/pexels-photo-5895642.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500
        https://images.pexels.com/photos/5895646/pexels-photo-5895646.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500
        https://images.pexels.com/photos/128206/pexels-photo-128206.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500
        https://images.pexels.com/photos/266666/pexels-photo-266666.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500
        https://images.pexels.com/photos/190819/pexels-photo-190819.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500
        https://images.pexels.com/photos/125779/pexels-photo-125779.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500
        https://images.pexels.com/photos/380782/pexels-photo-380782.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500
        https://images.pexels.com/photos/3766111/pexels-photo-3766111.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500
        https://images.pexels.com/photos/3651834/pexels-photo-3651834.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500
        https://images.pexels.com/photos/2442893/pexels-photo-2442893.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500
        https://images.pexels.com/photos/2155319/pexels-photo-2155319.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500
        https://images.pexels.com/photos/6166165/pexels-photo-6166165.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500
        https://images.pexels.com/photos/6166175/pexels-photo-6166175.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500
        https://images.pexels.com/photos/6166174/pexels-photo-6166174.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500
        https://images.pexels.com/photos/6328840/pexels-photo-6328840.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500
        https://images.pexels.com/photos/1697215/pexels-photo-1697215.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500
        https://hodinkee.imgix.net/uploads/images/cca09692-ba32-4461-a3df-6909447432e2/Rectangle6.jpg?ixlib=rails-1.1.0&fm=png&q=55&auto=format&usm=12&fit=crop&w=1446
        https://hodinkee.imgix.net/uploads/images/7bd4f901-96ff-4727-ad8f-39b78a7d0395/3S3A0089.jpg?ixlib=rails-1.1.0&fm=png&q=55&auto=format&usm=12&fit=crop&w=798
        https://hodinkee.imgix.net/uploads/images/3f5636e7-12ad-4d90-a7e6-6023c0c1002c/3S3A0089-1.jpg?ixlib=rails-1.1.0&fm=png&q=55&auto=format&usm=12&fit=crop&w=798
        https://hodinkee.imgix.net/uploads/images/3ea3f078-e0fc-4dd3-9fed-3b4d136547dc/picasso-watch-hero.jpg?ixlib=rails-1.1.0&fm=jpg&q=55&auto=format&usm=12&fit=crop&ch=Width%2CDPR%2CSave-Data&alt=
        https://hodinkee.imgix.net/uploads/images/8f41e39f-3568-4177-88d0-f56a85a6346d/heroKT1?ixlib=rails-1.1.0&fm=jpg&q=55&auto=format&usm=12&fit=crop&ch=Width%2CDPR%2CSave-Data&alt=
        https://hodinkee.imgix.net/uploads/images/41897ee2-8061-46d1-a498-50893eb1811e/KT1.jpg?ixlib=rails-1.1.0&fm=jpg&q=55&auto=format&usm=12&ch=Width%2CDPR%2CSave-Data&fit=crop&w=700
        https://hodinkee.imgix.net/uploads/images/44549eba-473f-4990-be42-c0a939f25381/Kurono-Tokyo-Toki-4.jpg?ixlib=rails-1.1.0&fm=jpg&q=55&auto=format&usm=12&ch=Width%2CDPR%2CSave-Data&fit=crop&w=820
        https://hodinkee.imgix.net/uploads/images/5f0eebd4-5317-49ec-8214-a68b9687bc6b/kt2?ixlib=rails-1.1.0&fm=jpg&q=55&auto=format&usm=12&ch=Width%2CDPR%2CSave-Data&fit=crop&w=700
        https://hodinkee.imgix.net/uploads/images/5011ddc9-e155-4635-b4c0-216be2c452c9/Hublot-big-bang-unico-sorai-green-hero.jpg?ixlib=rails-1.1.0&fm=jpg&q=55&auto=format&usm=12&fit=crop&ch=Width%2CDPR%2CSave-Data&alt=
        https://hodinkee.imgix.net/uploads/images/b3bdf989-c86e-4040-9690-c4632f27afcb/Hublot-big-bang-unico-sorai-green-8.jpg?ixlib=rails-1.1.0&fm=jpg&q=55&auto=format&usm=12&ch=Width%2CDPR%2CSave-Data&fit=crop&w=820
    ].sample
  end
end
