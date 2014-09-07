set repos prep-work/ meta/ assessment-prep/ solutions/ ruby-curriculum/ sql-curriculum/ rails-curriculum/ js-curriculum/ lightning-talks/ job-search-curriculum/ jobberwocky/ algorithms-curriculum/ backbone-curriculum/

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
    aa_pull
    aa_push
end
