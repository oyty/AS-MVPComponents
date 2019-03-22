package ${packageName}.mvp.${subPackageName};

import ${packageName}.base.mvp.IView;
import ${packageName}.base.mvp.IModel;

<#import "root://activities/MVPArmsTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
public interface ${pageName}Contract {

    interface View extends IView {

    }

    interface Model extends IModel{

    }
}
