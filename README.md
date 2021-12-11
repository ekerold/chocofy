# chocofy
Put update.ps1, install.ps1, record.ps1, and packages.config inside a git repository
to enable tracking which versions you have installed at any one time.  This means you
can sync between systems and backup via any git host.

Update procedure is:

    git pull
    ./update.ps1
    git commit -m "Updated $env:computername"
    git push

Install procedure is:

    git pull
    # edit packages.config to add <package name="mypackage" />
    ./install.ps1
    git commit -m "Installed mypackage"
    git push

It can be very nice to know exactly which versions were installed at some point in
history just in case there's an issue with a new version. But it can be trouble to 
maintain it, so don't worry too much about merging when syncing between different
systems; just let it overwrite, then commit with the computer name you updated and push.
When you search through your git history you can see which versions were installed on
each computer at points in time. (It might be a little messy, but it's fine for a fallback.)

See comments in install.ps1, update.ps1, and record.ps1 for details about what they do.