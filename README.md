# wbr_remote_project

Add a remote_dependency in your manifest.lkml file

```
remote_dependency: wbr_toolkit {
  url: "https://github.com/bryan-at-looker/wbr_remote_project.git"
  ref: "main"
}
```

Add the different toolkit references to your manifest file

```
visualization: {
  id: "wbr_v4"
  file: "//wbr_toolkit/wbr_v4.0.js"
  label: "WBR V4"
}

application: wbr_tools {
  label: "WBR Tools"
  file: "//wbr_toolkit/wbr_tools.js"
  entitlements: {
    core_api_methods: [
      "me",
      "all_lookml_models",
      "lookml_model",
      "lookml_model_explore",
      "run_inline_query"
    ]
  }
}


application: wbr_publish {
  label: "WBR Publish"
  file: "//wbr_toolkit/wbr_publish.js"
  entitlements: {
    use_embeds: yes
    new_window: yes
    use_form_submit: yes
    core_api_methods: ["all_dashboards",
      "dashboard",
      "search_users",
      "me",
      "search_dashboards",
      "lookml_model_explore",
      "scheduled_plan_run_once",
      "look",
      "create_dashboard_element",
      "update_dashboard",
      "update_dashboard_layout_component",
      "update_dashboard_element",
      "search_folders"
    ]
  }
}
```

Add the necessary comments for the new WBR Template to work properly
```

constant: title_case_viewname {
  value: "{% assign viewname = _view._name | replace: template, '' | split: '_' %}{% for word in viewname %}{{ word | capitalize }} {% endfor %}"
}

constant: row_period_over_average {
  value: "( 1.0000 * MAX(current.{{ row }}) / NULLIF(AVG(previous.{{ row }}),0) ) - 1 as {{ row }}"
}

constant: row_period_over_average_percent {
  value: "(MAX(current.{{ row | replace: '::percent', '' }}) - AVG(previous.{{ row | replace: '::percent', '' }}) ) as {{ row | replace: '::percent', '' }}"
}

constant: row_period_over_last_year {
  value: "( 1.0000 * this_year.{{ row }} / NULLIF(last_year.{{row}},0) ) - 1 as {{ row }}"
}

constant: row_period_over_last_year_percent {
  value: "( this_year.{{ row | replace: '::percent', '' }} - last_year.{{row | replace: '::percent', '' }} ) as {{ row | replace: '::percent', '' }}"
}

constant: tbl_order { value: " 100*{{ forloop.index }} as tbl_order"}
constant: tbl_val { value: "'{{ val | replace: '\"', '' }}'::varchar as tbl"}
```

Example manifest in [manifest_example.lkml](./manifest.lkml)
