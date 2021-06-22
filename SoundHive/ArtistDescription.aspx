<%@ Page  Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ArtistDescription.aspx.cs" Inherits="SoundHive._Default" Title="Artist Description" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="artist is-verified">
    
    <div class="artist__header">
      
    <div class="artist__info">
        
        <div class="profile__img">
          
        <img id="profileimage" src=""  runat="server" alt=""/>
            
        </div>
          
        <div class="artist__info__meta">
          
        <div class="artist__info__type">Artist</div>
            
        <div id="ArtistName" runat="server" class="artist__info__name"></div>
            
            
        </div>
          
          
    </div>
        
        
    <div class="artist__navigation">
        
        <ul class="nav nav-tabs" role="tablist">
            
        <li role="presentation" class="active">
            <a href="#artist-overview" aria-controls="artist-overview" role="tab" data-toggle="tab">Overview</a>
        </li>
            
           
            
        </ul>
          
       
          
    </div>
        
    </div>
      
    <div class="artist__content">
      
    <div class="tab-content">
      
        <!-- Overview -->
        <div role="tabpanel" class="tab-pane active" id="artist-overview">
            

            
          <%--  <div class="overview__related">

            <div class="section-title">Related Artists</div>
                
            <div class="related-artists">
                
                <a href="#" class="related-artist">
                  
                <span class="related-artist__img">
                    
                    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/7022/hoodie.jpg" alt="Hoodie Allen" />
                      
                </span>
                    
                <span class="related-artist__name">Hoodie Allen</span>
                    
                </a>
                  
                <a href="#" class="related-artist">
                  
                <span class="related-artist__img">
                    
                    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/7022/mikestud.jpg" alt="Mike Stud" />
                      
                </span>
                    
                <span class="related-artist__name">Mike Stud</span>
                    
                </a>
                  
                <a href="#" class="related-artist">
                  
                <span class="related-artist__img">
                    
                    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/7022/drake.jpeg" alt="Drake" />
                      
                </span>
                    
                <span class="related-artist__name">Drake</span>
                    
                </a>
                  
                <a href="#" class="related-artist">
                  
                <span class="related-artist__img">
                    
                    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/7022/jcole.jpg" alt="J. Cole" />
                      
                </span>
                    
                <span class="related-artist__name">J. Cole</span>
                    
                </a>
                  
                <a href="#" class="related-artist">
                  
                <span class="related-artist__img">
                    
                    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/7022/bigsean.jpg" alt="Big Sean" />
                      
                </span>
                    
                <span class="related-artist__name">Big Sean</span>
                    
                </a>
                  
                <a href="#" class="related-artist">
                  
                <span class="related-artist__img">
                    
                    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/7022/wiz.jpeg" alt="Wiz Khalifa" />
                      
                </span>
                    
                <span class="related-artist__name">Wiz Khalifa</span>
                    
                </a>
                  
                <a href="#" class="related-artist">
                  
                <span class="related-artist__img">
                    
                    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/7022/yonas.jpg" alt="Yonas" />
                      
                </span>
                    
                <span class="related-artist__name">Yonas</span>
                    
                </a>
                  
            </div>

            </div>--%>

            <div class="overview__albums">
              
          
                
            <div id="album" runat="server" class="album">
                
                <div class="album__info">
                  
                <div class="album__info__art">
                    
                    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/7022/whenDarkOut.jpg" alt="When It's Dark Out" />
                      
                </div>
                    
                <div class="album__info__meta">
                    
                    <div class="album__year">2015</div>
                      
                    <div class="album__name">When It's Dark Out</div>
                      
     
                      
                </div>
                    
                </div>
                  
                <div class="album__tracks">
                  
                <div id="track" runat="server" class="tracks">
                      
                    <div class="tracks__heading">
                      
                    <div class="tracks__heading__number">#</div>
                        
                    <div class="tracks__heading__title">Song</div>
                        
                    <div class="tracks__heading__length">
                        
                        <i class="ion-ios-stopwatch-outline"></i>
                          
                    </div>
                        
                    <div class="tracks__heading__popularity">
                        
                        <i class="ion-thumbsup"></i>
                          
                    </div>
                        
                    </div>

                

                </div>
                    
                </div>
                  
            </div>
                
            </div>
              
        </div>
          
        </div>
     

       

    </div>
        
    </div>
      
</div>
   
   
</asp:Content>
