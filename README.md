# wbr_bundle

A series of tools to facilitate WBR reporting with Looker installable via Marketplace installation.

1) Follow these [directions](https://docs.looker.com/data-modeling/marketplace#installing_a_tool_from_a_git_url) to install via commit sha. 

```
Git URL: git://github.com/bryan-at-looker/dynamic-dashboard-tester.git
Git SHA: v1.1
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
