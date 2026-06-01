# Changelog

## 1.0.7 (2026-06-01)

### Fixed
- Fixed login issues on native Windows, as well as set default login.

### Changed
- Fixed version so it uses pyproject.toml as single source of truth for app version.
- Fixed FastAPI metadata from `"AI Chat Application"` to `"Odysseus"`.
- Fixed how version is mentioned so it uses the modern versioning practices (from vers 1 to v1.0.0).
- Fixed .env.example with default settings. Just rename it to .env for quick setup.
- Updated readme.md to include additional instructions.

### Added
- `start.bat` — one-click launcher for native Windows; auto-creates venv,
  installs dependencies, and starts the server on `http://127.0.0.1:7000`
- Added release version for native Windows.
