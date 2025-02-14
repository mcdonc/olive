/***

  Olive - Non-Linear Video Editor
  Copyright (C) 2022 Olive Team

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.

***/

#ifndef PROJECTLOADBASETASK_H
#define PROJECTLOADBASETASK_H

#include "node/project/project.h"
#include "task/task.h"

namespace olive {

class ProjectLoadBaseTask : public Task
{
  Q_OBJECT
public:
  ProjectLoadBaseTask(const QString& filename);

  Project* GetLoadedProject() const
  {
    return project_;
  }

  const QString& GetFilename() const
  {
    return filename_;
  }

protected:
  Project* project_;

private:
  QString filename_;

};

}

#endif // LOADBASETASK_H
