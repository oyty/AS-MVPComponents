package ${packageName}.mvp.${subPackageName};

import ${packageName}.base.mvp.BaseModel;

<#if needActivity && needFragment>
import ${packageName}.base.mvp.ActivityScope;
<#elseif needActivity>
import ${packageName}.base.mvp.ActivityScope;
<#elseif needFragment>
import ${packageName}.base.mvp.FragmentScope;
</#if>
import javax.inject.Inject;


<#import "root://activities/MVPArmsTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
<#if needActivity && needFragment>
@ActivityScope
<#elseif needActivity>
@ActivityScope
<#elseif needFragment>
@FragmentScope
</#if>
public class ${pageName}Model extends BaseModel implements ${pageName}Contract.Model{

    @Inject
    public ${pageName}Model() {
    }

}