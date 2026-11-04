When the name of another project is referenced without a relative or absolute path, check for it in the `~/Development` folder.

# Fundamentals

- When showing multiple points, like alpha-numeric options (i.e. `(a)`, `(b)`, `(c)`), then render each option on a separate line with two spaces in front.
- Make data as concise as possible (minimze verbosity when not needed), while still maintaining necessary information.
- Avoid hacky or potentially flaky solutions to problems or bugs.

# Git Commits

- Make changes on the `main` branch unless I say otherwise.
- When creating commits, use an appropriate trailer in the message.
    - If you are Claude: `Co-authored-by: Claude <noreply@anthropic.com>`
    - If you are Codex: `Co-authored-by: Codex <noreply@openai.com>`
- Surround file, class, function, variable, etc. names with ticks (`).
- Run the global `/self-review-diff` skill loop before committing changes.
- Do *not* prefix commits with conventional messages like `feat:`, `fix:`, or `chore:`.
- Avoid adding unnecessary line breaks in commit messages bodies. Only put line breaks between paragraphs; there's no need to limit the length of lines.
- Make commit message bodies as concise as possible.

# Self Review Loop

We generally should run the global `/self-review-diff` skill loop after finishing changes.

# Plan Building

- When building plans that touch multiple project folders, split the plan into phases: one for each project.
- If a plan has multiple phases, each phase should have its own `/self-review-diff` loop.
- If a subsquent phase depends on a previous phase for a pinned/remote dependency, the previous phase should push first for the subsquent phase.
- If additional phases are added, they must also use the `/self-review-diff` skill loop before committing.
- Before proposing the plan to the user, be extra sure the plan is comprehensive and accurate. Double check if anything is missing and should be added.

# SwiftPM in repos

When making changes to locally checked out dependencies of an app, do not edit the SwiftPM version under `.build/` folders. Edit the real version adjacent to the project folder.

# Computer Use

## claude-in-chrome

When working in web projects, you can launch Google Chrome if it's not running when it's needed for `claude-in-chrome`:
```sh
open -a "Google Chrome.app"
```

## cua-driver

- Thd `cua-driver` skill can be used to control and record desktop apps. 
- Be careful around apps that may expose sensitive data. 
- Do not use the `desktop` capture scope unless the user gives explicit confirmation.
