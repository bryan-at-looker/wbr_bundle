visualization: {
  id: "wbr_v4"
  file: "wbr_v4.0.js"
  label: "WBR V4"
}

application: wbr_tools {
  label: "WBR Tools"
  file: "wbr_tools.js"
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
  file: "wbr_publish.js"
  entitlements: {
    use_embeds: yes
    new_window: yes
    use_form_submit: yes
    core_api_methods: ["all_dashboards","dashboard",
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
