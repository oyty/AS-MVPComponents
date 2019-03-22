package ${packageName}.mvp.${subPackageName};


import ${packageName}.base.BaseActivity;
import ${componentPackageName}.Dagger${pageName}Component;

import ${packageName}.R;



<#import "root://activities/MVPArmsTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
public class ${pageName}Activity extends BaseActivity<${pageName}Presenter> implements ${pageName}Contract.View {

    @Override
    protected void inject() {
        Dagger${pageName}Component.builder().view(this).build().inject(this);
    }

    @Override
    public int initViewID() {
        return R.layout.${activityLayoutName};
    }

    @Override
    protected void process() {

    }

}
