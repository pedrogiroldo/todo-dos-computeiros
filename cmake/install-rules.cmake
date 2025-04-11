install(
    TARGETS todo-dos-computeiros_exe
    RUNTIME COMPONENT todo-dos-computeiros_Runtime
)

if(PROJECT_IS_TOP_LEVEL)
  include(CPack)
endif()
