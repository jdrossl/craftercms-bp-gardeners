<#import "/templates/system/common/cstudio-support.ftl" as studio/>

<#assign bgStyle="" />
<#if contentModel.backgroundImage?? && !contentModel.backgroundVideo??>
	<#assign bgStyle="style='background-image: url(${contentModel.backgroundImage});'" />
</#if>

<#assign bgVideoClass="" />
<#assign bgVideoPoster="" />
<#if contentModel.backgroundVideo?? && (contentModel.backgroundVideo?length>0)>
	<#assign bgVideoClass="fullscreen-bg" />
    <#assign bgVideoPoster="poster='${contentModel.backgroundImage}'" />
</#if>


<!--Cover Section-->
<section <@studio.componentAttr path=contentModel.storeUrl /> id="home" class="home bg-black fix ${bgVideoClass}" ${bgStyle}>
	

	<#if contentModel.sectionTitle?? ><span class="scrollIndicatorTitle">${contentModel.sectionTitle}</span></#if>

	<#if contentModel.backgroundVideo?? && (contentModel.backgroundVideo?length>0) >    	
		
      <video loop muted autoplay id="cover_video_spbb" ${bgVideoPoster} preload="metadata" height="925" playsinline>
        <source src="${contentModel.backgroundVideo}" type="video/mp4">
      </video>
	 	
	</#if>

    <div class="overlay"></div>
	<!-- Edit Video -->
    <div <@studio.iceAttr iceGroup="coverBackgroundVideo" path=contentModel.storeUrl label="Cover Background Video"/> ></div>
    
    <div class="container">   
        <div class="row">
            <div class="main_home">
                <div class="col-md-12">
                   
                    <div class="hello_slid">
                        <div class="slid_item xs-text-center">
                            <div class="col-sm-4" <@studio.iceAttr iceGroup="coverFrontImage" path=contentModel.storeUrl label="Cover Front Image"/>>
                                <img src="${contentModel.frontImage!""}" alt="" />
                            </div>
                            <div class="col-sm-8">
                                <div class="home_text xs-m-top-30" <@studio.iceAttr iceGroup="coverIntroductoryText" path=contentModel.storeUrl label="Cover Introductory Text"/>>
                                    ${contentModel.introductoryText!""}
                                </div>
                                <div class="home_btns m-top-40" <@studio.iceAttr iceGroup="coverButtons" path=contentModel.storeUrl label="Cover Buttons"/>>
                                	<#if contentModel.coverButtons?? && contentModel.coverButtons.item??>
                						<#list contentModel.coverButtons.item as aButton>                  							
                                            <a href="${aButton.buttonURL!"#"}" class="btn ${aButton.buttonType!""} m-top-20">${aButton.label!""}</a>
                						</#list>
              						</#if>
                                </div>
                            </div>
                        </div><!-- End off slid item -->						
                    </div>
                </div>                
            </div>
        </div><!--End off row-->
    </div><!--End off container -->
</section>
<!--End off Cover Section-->

<!-- Edit Image -->
<div <@studio.iceAttr iceGroup="coverBackgroundImage" path=contentModel.storeUrl label="Cover Background Image"/> ></div>
