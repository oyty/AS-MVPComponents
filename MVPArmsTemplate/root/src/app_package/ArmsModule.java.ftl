package ${packageName}.mvp.${subPackageName};

<#if needActivity && needFragment>
import ${packageName}.di.scope.ActivityScope;
<#elseif needActivity>
import ${packageName}.di.scope.ActivityScope;
<#elseif needFragment>
import ${packageName}.di.scope.FragmentScope;
</#if>

import dagger.Binds;
import dagger.Module;

<#import "root://activities/MVPArmsTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
@Module
public abstract class ${pageName}Module {

    @Binds
    abstract ${pageName}Contract.Model bind${pageName}Model(${pageName}Model model);
}