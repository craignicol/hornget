install mvccontrib:
    get_from git("git://github.com/mvccontrib/MvcContrib.git", "mvc1")
    build_with nant, buildfile("nant.build"), FrameworkVersion35	
    with:
        tasks build
    switches:
        parameters "runtests=false"
    
    shared_library "bin"
    build_root_dir "build"

dependencies:  
    depend "castle.tools"        >> "Castle.Core"
    depend "castle.tools"        >> "Castle.DynamicProxy"
    depend "castle.tools"        >> "Castle.DynamicProxy2"
    depend "castle.activerecord" >> "Castle.ActiveRecord"
    depend "castle.activerecord" >> "Castle.ActiveRecord"
    depend "castle.components"   >> "Castle.Components.Binder"
    depend "castle.components"   >> "Castle.Components.Common.EmailSender"
    depend "castle.components"   >> "Castle.Components.Common.TemplateEngine"
    depend "castle.components"   >> "Castle.Components.Common.TemplateEngine.NVelocityTemplateEngine"
    depend "castle.components"   >> "Castle.Components.DictionaryAdapter"
    depend "castle.components"   >> "Castle.Components.Pagination"
    depend "castle.components"   >> "Castle.Components.Scheduler"
    depend "castle.components"   >> "Castle.Components.Scheduler.WindsorExtension"
    depend "castle.components"   >> "Castle.Components.Validator"
    depend "castle.facilities"   >> "Castle.Facilities.ActiveRecordIntegration"
    depend "castle.facilities"   >> "Castle.Facilities.AutomaticTransactionManagement"
    depend "castle.facilities"   >> "Castle.Facilities.BatchRegistration"
    depend "castle.facilities"   >> "Castle.Facilities.Cache"
    depend "castle.facilities"   >> "Castle.Facilities.Logging"
    depend "castle.facilities"   >> "Castle.Facilities.NHibernateIntegration"
    depend "castle.facilities"   >> "Castle.Facilities.Synchronize"
    depend "castle.facilities"   >> "Castle.Facilities.WcfIntegration"
    depend "castle.windsor"      >> "Castle.MicroKernel"
    depend "castle.windsor"      >> "Castle.Windsor"

package.category = "Web"
package.description = "This project adds additional functionality on top of the ASP.NET MVC Framework."
package.forum = "http://groups.google.co.uk/group/mvccontrib-discuss"
package.homepage = "http://www.codeplex.com/MVCContrib"
package.name = "MVCContrib"
package.notes = ""
