<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarousalInsideTab.aspx.cs" Inherits="BGBeautyProject_Website.Language.En.TestPage.CarousalInsideTab" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.css'/>
      <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css'/>

    <style>
        .carousel-in-tab .item {
          height: 10rem;
          background: #4dc7a0;
          padding: 1rem;
        }


        .tab-link {
            cursor: pointer;
            display: inline-block;
            padding: 10px 20px;
            border-width: 1px 1px 5px 1px;
            border-color: #ededed;
            border-style: solid;
        }

        .tab-link.active {
            border-bottom-color: #0000ff;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        
        <!--latest product slider section-->
<div class="container products-tab">
  <div>

    <span class="tab-link active" id="nav-home">Home</span>
    <span class="tab-link" id="nav-profile">Profile</span>
    <span class="tab-link" id="nav-contact">Contact</span>

  </div>

  <div class="tab-contents" id="nav-tabContent">

    <div class="tab-content show active" id="tab-home">

      <div class="owl-carousel carousel-in-tab">
        <div class="item">
          <h4>Tab 11</h4>
        </div>
      </div>

    </div>

    <div class="tab-content" id="tab-profile" style="display: none">

      <div class="owl-carousel carousel-in-tab">
        <div class="item">
          <h4>Tab 22</h4>
        </div>

      </div>

    </div>

    <div class="tab-content" id="tab-contact" style="display: none">

      <div class="owl-carousel carousel-in-tab">
        <div class="item">
          <h4>Tab 33</h4>
        </div>
        
      </div>

    </div>
  </div>

</div>


  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js'></script>

          <script>

              $('.tab-link').click(function (e) {

                  if (!$(this).hasClass('active')) {

                      $('.tab-link').removeClass('active');
                      $(this).addClass('active');


                      var id = $(this).attr('id');
                      id = id.split('-');
                      id = id[1];

                      $('.tab-content').css('display', 'none');

                      $('#tab-' + id).css('display', 'block');

                  }

              });

              $('.carousel-in-tab').owlCarousel({
                  loop: true,
                  margin: 10,
                  nav: true,
                  responsive: {
                      0: {
                          items: 1
                      },
                      600: {
                          items: 3
                      },
                      1000: {
                          items: 5
                      }
                  }
              });
          </script>          
    </form>
</body>
</html>
