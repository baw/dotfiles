set repos prep-work/ meta/ assessment-prep/ solutions/ ruby-curriculum/ sql-curriculum/ rails-curriculum/ js-curriculum/ lightning-talks/ job-search-curriculum/ jobberwocky/ algorithms-curriculum/ backbone-curriculum/

set current (pwd)

function ssh_check
    if ssh-add -l | grep -oq 'bitbucket'
        echo 'Bitbucket key already added'
    else
        ssh-BB
        echo 'Bitbucket key has been added'
    end

    if ssh-add -l | grep -oq 'github'
        echo 'GitHub key already added'
    else
        ssh-GH
        echo 'GitHub key has been added'
    end
end

function aa_pull
    for repo in $repos
        echo $repo pull
        cd ~/Developer/AppAcademy/$repo
        git pull
    end
end

function aa_push
    for repo in $repos
        echo $repo push
        cd ~/Developer/AppAcademy/$repo
        git push bitbucket master
    end
end

function aa_update
    ssh_check
    aa_pull
    aa_push
    
    cd $current
end
