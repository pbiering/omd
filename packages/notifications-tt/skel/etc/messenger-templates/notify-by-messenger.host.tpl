#
# Messenger Template used for Host Notifications
#
#
# Message starts here --->
*** [% NOTIFICATIONTYPE %] *** [% HOSTNAME %] is [% HOSTSTATE %] (sender [% PERL %]print `hostname`;[% END %])

#--HOST-ALERT----------------------
#- Hostname:    [% HOSTNAME %]
#- Hostaddress: [% HOSTADDRESS %]
#- - - - - - - - - - - - - - - - -
#- State:       [% HOSTSTATE %]
#- Date:        [% SHORTDATETIME %]
#- Output:      [% HOSTOUTPUT +%]
#[% IF NOTIFICATIONTYPE == 'ACKNOWLEDGEMENT' %]
#----------------------------------
#- Author:      [% ACKAUTHOR %]
#- Comment:     [% ACKCOMMENT %]
#----------------------------------
#[% ELSIF NOTIFICATIONCOMMENT %]
#----------------------------------
#- Comment:     [% NOTIFICATIONCOMMENT %]
#----------------------------------
#[% ELSE %]
#----------------------------------
#[% END %]
