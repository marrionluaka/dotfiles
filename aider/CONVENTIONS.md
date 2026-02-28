# Code Conventions

## General Approach

- Think step-by-step — describe your plan in pseudocode before writing code.
- Confirm the plan, then write code.
- Write correct, complete, and fully functional code. Leave no TODOs, placeholders, or missing pieces unless explicitly asked to.
- If you don't know the answer, say so. Don't guess.

---

## Code Quality

- Prioritize readability over performance.
- Keep code as simple as possible. Avoid unnecessary complexity.
- Follow the DRY principle (Don't Repeat Yourself).
- Follow KISS (Keep It Simple, Stupid) — avoid over-engineering.
- Use early returns to reduce nesting and improve clarity.

---

## Naming

- Use meaningful names for variables, functions, and constants — names should reveal intent.
- Event handler functions should use a `handle` prefix (e.g., `handleClick`, `handleKeyDown`).
- Function names should describe the action being performed.

---

## Functions

- Functions should be small and do one thing well, ideally no more than a few lines.
- Prefer fewer arguments — aim for no more than two or three.
- Define types where possible.

---

## Comments

- Only add comments when necessary — strive to make code self-explanatory.
- When used, comments should provide information not readily apparent from the code.

---

## Error Handling

- Handle errors and exceptions properly to ensure robustness.
- Use exceptions rather than error codes.

---

## Security

- Consider security implications. Follow best practices to protect against vulnerabilities and attacks.

---

## Functional Programming

Adhere to these four principles:

1. **Pure Functions** — same inputs always produce same outputs, no side effects.
2. **Immutability** — do not mutate data; return new values instead.
3. **Function Composition** — build complex behavior by combining simple functions.
4. **Declarative Code** — express _what_ to do, not _how_ to do it.

Do not use object-oriented programming.

---

## Module Design

- Keep module interfaces minimal — only expose what consumers need.
- Define and export types for the public interface.
- Private functions and helpers must be prefixed with `_` and placed below public ones.
- Public interfaces (exported functions, returned state, returned functions) must appear above private implementations.
- The best modules are those whose interfaces are much simpler than their implementations.
- Remember it is more important for a module to have a simple interface than a simple implementation. The interface is what consumers interact with, so it should be as straightforward as possible, even if the underlying implementation is complex.
- Be pragmatic and ask yourself: "does breaking up a function reduce the overall complexity of the system?" If not, it may be better to keep it as a single function.

This applies to hooks, composables, and lib files:

- **Hooks / Composables** — export a return type, expose state via `toRefs(readonly(state))`, and only return what consumers need. Private helpers stay inside the function, prefixed with `_`, below the public functions.
- **Lib files** — export only the public functions. Private helpers are non-exported, prefixed with `_`, and placed below the exported functions.

---

## Software Design

Before writing code, reason about the design. Good software design reduces future complexity.

- **Minimize dependencies** — reduce the number of dependencies whenever possible. Those that remain should be simple and obvious.
- **Design for change** — anticipate ways the system may need to evolve and ensure your design accommodates that easily.
- **Sensible defaults** — provide defaults that work for most users, with specific mechanisms available for specific use cases.
- **Deep modules** — minimize the information a consumer needs from outside a module. A narrow interface that hides complexity is the goal.
- **Design it twice** — your first design is rarely the best. For any major design decision, consider multiple options before committing. The best solution often only becomes apparent through comparison.
- **Push back when necessary** — if a proposed design has a better alternative, say so and propose it. Do not follow a design direction you have reservations about unless it has been explicitly confirmed.
- **Test ideas from a high level** — before committing to implementation details, validate your design from a high level overview to catch fundamental flaws early.

---

## Accessibility

- Implement accessibility features on interactive elements (e.g., `tabindex`, `aria-label`, keyboard event handlers).

---

## Completeness

- Fully implement all requested functionality.
- Include all required imports and ensure proper naming of key components.
- Verify code is complete and thoroughly tested before finalising.
