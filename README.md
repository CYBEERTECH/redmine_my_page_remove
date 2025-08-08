## 🏭 Redmine My Page Remove Plugin

## 📌 Description

This Redmine plugin provides a streamlined experience by removing the **My page** heading from the top menu bar and make the user only see the **Home** page as the default view.

## ✨ Features

- 🏠 **Stays on Home Page**
  Prevents redirection to "My Page" for signed-in users, keeping them on the main Home page (e.g., dashboards view).

- ❌ **Removes "My Page" Link**
  Automatically removes the "My Page" link from the top menu for all users.

- 🧼 **Simplifies Navigation** 
  Reduces clutter in the top menu by eliminating an unused navigation option.

---

## ⚙️ Installation

📝 Notes
- Tested on Redmine 6.0.0

- The root path for Redmine can vary depending on deployment method and server setup

- Compatible with production deployments using Puma and Nginx

- Safe for future upgrades — does not modify core files


1. **Download the plugin**

   ```bash
   cd /opt/redmine/plugins
   git clone https://github.com/CYBEERTECH/redmine_my_page_remove.git
   ```

2. **Install dependencies**
  ```bash
   cd /opt/redmine 
   bundle install
  ```

3. **Migrate plugins**
  ```bash
   cd /opt/redmine
   bundle exec rake redmine:plugins:migrate RAILS_ENV=production
  ```

4. **Restart the the environment**
   Reminder: Puma and Nginx were used for this particular environment.
  ```bash
   cd /opt/redmine
   RAILS_ENV=production bundle exec puma -C config/puma.rb >/dev/null 2>&1 &
   sudo systemctl restart nginx
  ```


📁 Directory Structure

redmine_my_page_remove/
├── init.rb
└── README.md


    The Redmine My Page Remove plugin provides a streamlined experience by 
    removing the My page heading from the top menu bar and make the user 
    only see the Home page as the default view.
    Copyright (C) 2025 Marcus Vendittuoli aka CYBEERTECH

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 2 of the License, or
    any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
