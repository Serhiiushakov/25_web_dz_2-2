FROM python:3.12-slim

# Встановіть робочу директорію
WORKDIR /app

# Скопіюйте код в контейнер
COPY dz8.py ./
COPY pyproject.toml ./

# Встановіть Poetry для управління залежностями
RUN pip install poetry

# Встановіть залежності
RUN poetry install --no-root

# Запустіть застосунок
CMD ["poetry", "run", "python", "dz8.py"]
