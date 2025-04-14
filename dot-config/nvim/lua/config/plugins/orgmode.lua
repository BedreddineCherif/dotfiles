return {

	"nvim-orgmode/orgmode",
	opts = {
		org_agenda_files = "~/orgfiles/**/*",
		org_default_notes_file = "~/orgfiles/refile.org",
		org_hide_leading_stars = true,
		org_log_into_drawer = "LOGBOOK",
		org_startup_indented = true,
		calander_week_start_day = 0,
		org_agenda_span = "week",
		org_agenda_start_on_weekday = 0,
		org_todo_keywords = { "TODO(t)", "PROG(p)", "INTR(i)", "NEXT(n)", "|", "DONE(d)" },
		org_agenda_custom_commands = {
			d = {
				description = "Daily Agenda",
				types = {
					{
						type = "agenda",
						org_agenda_override_header = "Daily Overveiw",
						org_agenda_span = "day",
					},
					{
						type = "tags_todo",
						match = "TODO",
						org_agenda_overriding_header = "TODO's",
					},
				},
			},
		},
	},
}
