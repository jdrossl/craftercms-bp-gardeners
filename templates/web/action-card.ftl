<#import "/templates/system/common/cstudio-support.ftl" as studio />

<#assign bgStyle="" />
<#if contentModel.actionCardBackgroundImage??>
	<#assign bgStyle="style='background-image: url(${contentModel.actionCardBackgroundImage});'" />
</#if>

<!--Business Section-->
<section id="business" class="business bg-blue roomy-70" <@studio.componentAttr path=contentModel.storeUrl />  ${bgStyle}>

<!-- Edit Image -->
<div <@studio.iceAttr iceGroup="actionCardBackgroundImage" path=contentModel.storeUrl label="Action Card Background Image"/> ></div>

	<#if contentModel.sectionTitle?? ><span class="scrollIndicatorTitle">${contentModel.sectionTitle}</span></#if>
    
    <div class="business_overlay"></div>
    <div class="container">
        <div class="row">
            <div class="main_business">
                <div class="col-md-5">
                    <div class="business_item sm-m-top-50">
                    
                    	<div <@studio.iceAttr iceGroup="actionCardText" path=contentModel.storeUrl label="Action Card Text"/> >
	                    	${contentModel.actionCardText!""}
                        </div>
                  
                        <div class="business_btn m-top-50" <@studio.iceAttr iceGroup="actionCardButtons" path=contentModel.storeUrl label="Action Card Buttons"/>>
                            <#if contentModel.actionCardButtons?? && contentModel.actionCardButtons.item??>
                              	<#list contentModel.actionCardButtons.item as aButton>
                                	
                                  <a href="${aButton.buttonURL!"#"}" class="btn ${aButton.buttonType!""} m-top-20">${aButton.label!""}</a>
                              	</#list>
              				</#if>
                        </div>

                    </div>
                </div>

                <div class="col-md-7">
                    <div class="business_item">
                        <div class="business_img business_img_card" <@studio.iceAttr iceGroup="actionCardForegroundImage" path=contentModel.storeUrl  label="Action Card Image"/>>
                            <img src="${contentModel.actionCardForegroundImage!""}" alt="" />
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>
<!-- End off Business section -->