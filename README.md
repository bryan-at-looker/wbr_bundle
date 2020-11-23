# wbr_bundle

# Installation
WBR Bundle is a series of tools to facilitate WBR reporting with Looker, installable via Marketplace installation.

1) Follow these [directions](https://docs.looker.com/data-modeling/marketplace#installing_a_tool_from_a_git_url) to install via commit sha. 

```
Git URL: git://github.com/bryan-at-looker/dynamic-dashboard-tester.git
Git SHA: v1.1
```

## Notes
WBR Tools builds LookML templates that requires a few Looker [constants](https://docs.looker.com/reference/manifest-params/constant). These will be imported via marketplace git installation. Then they will need to be imported from the marketplace project to your main LookML project via local project.

Make sure that [Local Project Import](https://docs.looker.com/admin-options/settings/labs#local_project_import) is turned on in Admin > Labs and import the project

```
local_dependency: {
  project: "marketplace_git_github_com_bryan_at_looker_wbr_bundle"
}
```

# What's New in v1.1

## WBR Tools
Introduction WBR Tools to magically build WBR Templates through an extension. Create and manage templates which build WBR templates off of models, explore, fields and slices.

## WBR Viz V4
- Faster to render
- Better controls when in Edit Mode
- New system of record for format and row/column changes
- Introduces Sparklines. WBR Tools builds format automatically for you. Rows that have a title that start with `sparkline::<timeframe>::` will be collapsed by this string

## WBR Publish
- Bug fixes for Firefox
- New loading logo
