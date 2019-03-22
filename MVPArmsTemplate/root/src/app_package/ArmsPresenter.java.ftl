package ${packageName}.mvp.${subPackageName};


<#if needActivity && needFragment>
import ${packageName}.base.mvp.ActivityScope;
<#elseif needActivity>
import ${packageName}.base.mvp.ActivityScope;
<#elseif needFragment>
import ${packageName}.base.mvp.FragmentScope;
</#if>
import ${packageName}.base.mvp.BasePresenter;
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
public class ${pageName}Presenter extends BasePresenter<${pageName}Contract.Model, ${pageName}Contract.View> {

    @Inject
    public ${pageName}Presenter (${pageName}Contract.Model model, ${pageName}Contract.View rootView) {
        super(model, rootView);
    }

}
