<?php
// Get the current user
$user = exec('whoami');

// Get the current timestamp
$time = exec('date +%Y%m%d%H%M%S');

// Change directory to the specified path
exec('cd /Users/matteoborghi/Vault');

// Check the Git status
$status = exec('git status --short');

// If there are changes, commit and push
if (!empty($status)) {
    exec('git add .');
    echo " ";

    exec('git commit -m "' . $time . '"');
    echo " ";

    exec('git push');
    echo " ";
}

echo "done " . $time;
?>