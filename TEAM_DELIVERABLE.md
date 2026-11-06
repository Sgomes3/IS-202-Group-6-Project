# Login Prototype – Team Deliverables

## User story
As a returning user, I want to enter my login details, so that I can reach the application.

## Customer questions
1. Who is logging in (students, staff, admins)?
2. What should happen when details are missing or incorrect?

## Definition of done
- One page with email field, password field, and Log in button.
- Empty fields show a short message.
- Demo details (demo@example.com / demo1234) show success; anything else shows an error.
- Runs at http://localhost:8080 in Docker.

## GitHub Project board (To Do / Doing / Done)
| Card | Owner | Status |
|------|-------|--------|
| Story: returning user login | Team | Doing |
| Task 1: Sketch login page (Excalidraw) | Member 1 | To Do |
| Task 2: Build page (HTML/CSS/JS) | Members 2 & 3 | To Do |
| Task 3: Test and demo (empty + demo inputs, screenshot) | Members 4 & 5 | To Do |

## Docker commands
```
docker build -t is-202-group-6-project .
docker run --rm -p 8080:80 --name login-prototype is-202-group-6-project
# open http://localhost:8080
# stop the container with Ctrl+C
```

## Submission checklist
- [ ] Code pushed to GitHub (link)
- [ ] Team board link
- [ ] Screenshot of the page running in Docker
- [ ] One sentence of customer feedback + the change made:
  "Customer asked for ________, so we changed ________."
