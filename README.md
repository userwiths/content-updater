Content:
        1.Main Idea.
                -- Why I wrote it
                -- How Does It Work.
                -- How Do I Use It
        2.Means of Reallyzation.
        3.Future.
        4.'Bout Me.

!!!!! THE PROGRAM IS WRITEN IN BASH. WORKS ON LINUX. NOT WINDOWS. !!!!!


1.Main Idea.

        -- Why Do I Wrote It.
                The inspiration for this program came from the realization that I, as a developer (in progress)\
                use many tools and resources which are hosted on a given web-site and are updated on it.\
                So Instead of having to update them manualy, I chosed to write a program to download, and manage\
                such resources.\

        -- How does it Work
                The Program is writen in Bash (.sh) script. Found on every linux and with a port to the newest windows.
                The file "content-updater" is the main part  of the program, it will generate a file named ".update.conf"
                in which there will be saved info for the resource you downloaded (url source,file name,sha1sum).

                Downloading is done by the command "content-updater download [url] [file name]", where url is a needed argument
                and file name is optional. If there is no file name given it will be saved as "NewFile[N]".

                To update content use the command "content-updater update [web,git,all]", where if you type "web"
                the program will update all resources saved in the config file, or downloaded with it before.
                "git" Will start checking recursively from youre /home directory for git hub repositorie and "checkout" 
                if there are any available updates to them, after that it will try to execute "./configure && make"
                in an attempt to install the new updated package.
                "all" is like executing the above given one after another.

                To Delete a resource entry enter "content-updater delete [file name]" and the program will remove it from the 
                config file and delete its local copy.

        -- How Do I Use It
                You want to download the newest version of package "XYZ" developed by company "ABC".
                So you enter the url where the newest version is located (found on the web-site most times)
                you execute "content-updater ABC/download/latest/XYZ ABC-XYZ" and the file will be saved as "ABC-XYZ".
                You can set a shedule with "cron" or just append "content-updater update all" to youre ".bash_rc"  
                and every time you load youre computer it will automaticaly check for a newer version of XYZ 
                using the url you gave it.


2.Means of reallyzation.
        In order to make this program work were used only free-access tools:
                wget -- to download the resources from the url.
                find -- to search for files on the local drive.
                sha1sum -- in order to distinguish between updated and out of date versions.
                git -- to manage github projects.
        The work flow of the program is something like this:
                -- Check resource url addresses from the config file.
                -- Check the sha1sum writen in the conf file and from the directly downloaded copy.
                -- Different? Update.
                -- Same? Already Up-To-Date.
        Nothing too extravagant, but its still work in progress. :)

3.Future.
        -- Restriction Log : Update given files always, Do NOT update given files ever and so on.
        -- Intuitiv Resource Search : Find a given resource by name.
        -- Find Newer version from official site : auto search the official site for the newest version.
        -- Show Made Changes : Show what was changed since the last time.
        -- Local Resource Placement : Distinguish between audio, video, pictures,\
                                     archives, package files and place them in their own directory.


4.'Bout Me.
        Have a project that other dont take serius???
        Need another 10 fingers and 1 brain for a simple project???
        Want to get in touch with me????

        mail:
                ******** userwiths[at]mailinator.com ***********

        Name : Stiliyan Tonev
        Experience : 1-2 years.
        Platform : Linux/Windows
        Language : C, Python, Bash, C# (c-sharp), Batch.
        Age : 19/20
        Country : Europe, Bulgaria
        English: writing=horrible, spoken & reading & listening = good



        The upcoming 2017/2018 school year will be my first UNIVIRSITY year, I am a big
        Programin Entusiasist, tho a bit lazy, but always ready to accept new challenges
        and project ideas. Mostly working on Linux but i am able to swallow my pride
        and degrade to Windows if needed. I am doing this project and working on some more
        with the idea to use them as EXPerience .
