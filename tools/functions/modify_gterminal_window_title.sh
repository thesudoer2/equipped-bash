#@ ##################################################################
#@                                                                  #
#@ NAME                                                             #
#@     Modify gnome terminal window title.                          #
#@                                                                  #
#@ DESCRIPTION                                                      #
#@     This function is used to modify gnome terminal window title. #
#@                                                                  #
#@ SYNOPSIS                                                         #
#@     modify_gterminal_window_title <new_title>                    #
#@                                                                  #
#@ ##################################################################


modify_gterminal_window_title ()
{
    function modify_gterminal_window_title_usage()
    {
        printf "Usage:\n"
        printf "\t%s <terminal_name>\n" "${_function_name}"
    }

    function modify_gterminal_window_title_print_msg()
    {
        printf "%s: $@" "$_function_name"
    }

    local _function_name="$FUNCNAME"

    if [ "$#" = 0 ]
    then
        modify_gterminal_window_title_print_msg "missing operand" >&2
        modify_gterminal_window_title_usage >&2
        return 1
    fi

    local _title="\[\e]2;$@\a\]"
    PS1="${PS1}${_title}"
}
alias term_title="modify_gterminal_window_title"
